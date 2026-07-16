import 'dart:async';

import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../../../service/chat_service.dart';
import '../../../../utils/speech/speech_to_text.dart';
import '../../../../utils/speech/text_to_speech.dart';
import '../../../../utils/speech/voice_option.dart';
import './chat_message.dart';

class ChatController {
  final controller = TextEditingController();
  final scrollController = ScrollController();
  final speech = SpeechToTextService();
  final tts = TextToSpeechService();
  VoiceOption? selectedVoice;
  Timer? silenceTimer;
  VoidCallback? onStateChanged;
  PlatformFile? selectedFile;

  int? sessionId;
  bool isListening = false;
  bool isSpeaking = false;
  bool useVoiceResponse = false;

  final chatService = ChatService();

  String selectedMode = "All";

  final List<ChatMessage> messages = [
    ChatMessage(
      text: "Hi! How can I help you today?",
      isUser: false,
      timestamp: DateTime.now(),
    ),
  ];

  Future initialize() async {
    await speech.initialize();
    await tts.initialize();

    tts.onStart = () {
      isSpeaking = true;
    };

    tts.onComplete = () {
      isSpeaking = false;
    };

    tts.onCancel = () {
      isSpeaking = false;
    };
  }

  Future startVoiceTyping(VoidCallback refresh) async {
    if (isListening) return;
    useVoiceResponse = true;
    await tts.stop();
    isSpeaking = false;

    isListening = true;
    refresh();

    await speech.startListening(
      onResult: (text) {
        controller.text = text;
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );

        refresh();

        silenceTimer?.cancel();

        silenceTimer = Timer(
          const Duration(seconds: 2),
          () async {
            if (controller.text.trim().isNotEmpty && isListening) {
              await stopVoiceTyping(refresh);

              await sendMessage(refresh);
            }
          },
        );
      },
    );
  }

  Future stopVoiceTyping(VoidCallback refresh) async {
    silenceTimer?.cancel();

    if (!isListening) return;

    await speech.stopListening();

    isListening = false;

    refresh();
  }

  Future<void> sendMessage(VoidCallback refresh) async {
    final shouldSpeak = useVoiceResponse;
    if (isListening) {
      await stopVoiceTyping(refresh);
    }

    final text = controller.text.trim();

    if (text.isEmpty) return;

    messages.add(
      ChatMessage(
        text: text,
        isUser: true,
        timestamp: DateTime.now(),
      ),
    );

    messages.add(
      ChatMessage(
        text: "Thinking...",
        isUser: false,
        timestamp: DateTime.now(),
      ),
    );

    refresh();

    controller.clear();

    scrollToBottom();

    try {
      final response = await chatService.sendMessage(
        content: text,
        mode: selectedMode,
        sessionId: sessionId,
      );

      if (response.sessionId != 0) {
        sessionId = response.sessionId;
      }

      final responseContent = FormatUtils.rewriteContentLinks(content: response.content);

      messages[messages.length - 1] = ChatMessage(
        text: responseContent,
        isUser: false,
        timestamp: DateTime.now(),
      );

// If the response contains requirements,
// populate the input with them.
      if (response.requirements.isNotEmpty) {
        controller.text =
            response.requirements.keys.map((key) => '- $key: ').join('\n');

        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
      }

      refresh();

      scrollToBottom();
      if (shouldSpeak) {
        isSpeaking = true;
        refresh();

        await tts.speak(
          cleanMarkdownForTts(response.content),
        );

        isSpeaking = false;
        refresh();

        // Continue listening for the next voice question
        await startVoiceTyping(refresh);
      } else {
        useVoiceResponse = false;
      }
    } catch (_) {
      messages[messages.length - 1] = ChatMessage(
        text: "Something went wrong.",
        isUser: false,
        timestamp: DateTime.now(),
      );

      refresh();
    }
  }

  void startSpeakingState(VoidCallback refresh) {
    isSpeaking = true;
    refresh();
  }

  void stopSpeakingState(VoidCallback refresh) {
    isSpeaking = false;
    refresh();
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!scrollController.hasClients) return;

      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  String cleanMarkdownForTts(String text) {
    return text
        // Headers
        .replaceAll(RegExp(r'^#{1,6}\s*', multiLine: true), '')

        // Bold / italic markers
        .replaceAll('**', '')
        .replaceAll('__', '')
        .replaceAll('*', '')
        .replaceAll('_', '')

        // Code markers
        .replaceAll('```', '')
        .replaceAll('`', '')

        // Tables
        .replaceAll('|', ' ')
        .replaceAll(RegExp(r'-{3,}'), '')

        // Blockquotes
        .replaceAll(RegExp(r'^>\s*', multiLine: true), '')

        // Extra blank lines
        .replaceAll(RegExp(r'\n{2,}'), '\n')
        .trim();
  }

  void dispose() {
    controller.dispose();
    scrollController.dispose();
  }
}
