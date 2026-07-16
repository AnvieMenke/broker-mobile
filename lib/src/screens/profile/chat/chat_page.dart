import 'package:broker_mobile/src/screens/profile/chat/attachment_tag_selector.dart';
import 'package:broker_mobile/src/screens/profile/chat/voice_settings_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../components/containers/page_container.dart';
import '../../../../utils/speech/voice_option.dart';
import 'attachment_preview.dart';
import 'attachment_picker.dart';
import 'chat_bubble.dart';
import 'chat_controller.dart';
import 'chat_input.dart';
import 'mode_selector.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final chat = ChatController();

  @override
  void initState() {
    super.initState();

    chat.onStateChanged = () {
      if (mounted) {
        setState(() {});
      }
    };

    chat.initialize();
  }

  @override
  void dispose() {
    chat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => FocusScope.of(context).unfocus(),
      child: PageContainer(
        title: "WM Assistant",
        scrollable: false,
        padding: false,
        page: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chat.scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: chat.messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    message: chat.messages[index],
                  );
                },
              ),
            ),
            const Divider(height: 1),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (chat.selectedFile != null) ...[
                      AttachmentPreview(
                        file: chat.selectedFile!,
                        onRemove: () {
                          setState(() {
                            chat.selectedFile = null;
                            chat.selectedAttachmentTag = null;
                          });
                        },
                      ),

                      const SizedBox(height: 10),
                      AttachmentTagSelector(
                        tags: chat.attachmentTags,
                        selectedTag: chat.selectedAttachmentTag,
                        onSelected: (tag) {
                          setState(() {
                            chat.selectedAttachmentTag = tag;
                          });
                        },
                      ),

                      const SizedBox(height: 12),
                    ],
                    Row(
                      children: [
                        ModeSelector(
                          value: chat.selectedMode,
                          onChanged: (mode) {
                            setState(() {
                              chat.selectedMode = mode;
                            });
                          },
                        ),
                        const Spacer(),
                        if (chat.selectedMode == "Account Attachment")
                          IconButton(
                            tooltip: "Attach File",
                            icon: const Icon(Icons.attach_file),
                            onPressed: () async {
                              final file = await AttachmentPicker.pick();

                              if (file == null) return;

                              setState(() {
                                chat.onFileAttached(file);
                              });
                            },
                          ),
                        IconButton(
                          tooltip: "Voice Settings",
                          icon: const Icon(Icons.record_voice_over),
                          onPressed: () async {
                            final selected = await showDialog<VoiceOption>(
                              context: context,
                              builder: (_) => VoiceSettingsDialog(
                                tts: chat.tts,
                              ),
                            );

                            if (selected != null) {
                              chat.selectedVoice = selected;
                            }
                          },
                        ),
                        IconButton(
                          tooltip: "Voice",
                          style: IconButton.styleFrom(
                            backgroundColor:
                                (chat.isListening || chat.isSpeaking)
                                    ? Colors.red.withValues(alpha: 0.15)
                                    : Colors.transparent,
                          ),
                          icon: Icon(
                            chat.isListening || chat.isSpeaking
                                ? Icons.mic
                                : Icons.mic_none,
                            color: chat.isListening || chat.isSpeaking
                                ? Colors.red
                                : Colors.grey,
                          ),
                          onPressed: () async {
                            if (chat.isSpeaking) {
                              await chat.tts.stop();

                              chat.isSpeaking = false;

                              if (mounted) {
                                setState(() {});
                              }

                              return;
                            }

                            if (chat.isListening) {
                              await chat.stopVoiceTyping(() {
                                if (mounted) {
                                  setState(() {});
                                }
                              });

                              return;
                            }

                            await chat.startVoiceTyping(() {
                              if (mounted) {
                                setState(() {});
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ChatInput(
                      controller: chat.controller,
                      onSend: () async {
                        chat.useVoiceResponse = false;
                        await chat.sendMessage(() {
                          if (mounted) {
                            setState(() {});
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
