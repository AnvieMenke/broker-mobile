import 'dart:ui';

import 'package:broker_mobile/utils/speech/voice_option.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechService {
  final FlutterTts _tts = FlutterTts();
  VoidCallback? onStart;
  VoidCallback? onComplete;
  VoidCallback? onCancel;

  Future<void> initialize() async {
    await _tts.awaitSpeakCompletion(true);

    await _tts.setLanguage("en-US");
    await _tts.setSpeechRate(0.45);
    await _tts.setPitch(1.0);

    _tts.setStartHandler(() {
      onStart?.call();
    });

    _tts.setCompletionHandler(() {
      onComplete?.call();
    });

    _tts.setCancelHandler(() {
      onCancel?.call();
    });
  }

  Future<List<VoiceOption>> getAvailableVoices() async {
    final voices = await _tts.getVoices;

    final List<VoiceOption> result = [];

    for (final voice in voices) {
      if (voice is! Map) continue;

      final name = voice["name"]?.toString() ?? "";
      final locale = voice["locale"]?.toString() ?? "";

      // US English only
      if (locale != "en-US") continue;

      result.add(
        VoiceOption(
          name: name,
          locale: locale,
        ),
      );
    }

    final unique = <String, VoiceOption>{};

    for (final voice in result) {
      unique["${voice.name}_${voice.locale}"] = voice;
    }

    final list = unique.values.toList();

    list.sort((a, b) => a.name.compareTo(b.name));

    return list;
  }

  Future<void> setSpeechRate(double rate) async {
    await _tts.setSpeechRate(rate);
  }

  Future<void> setPitch(double pitch) async {
    await _tts.setPitch(pitch);
  }

  Future<void> previewVoice(
    VoiceOption voice, {
    double? speed,
    double? pitch,
  }) async {
    await stop();

    await _tts.setVoice({
      "name": voice.name,
      "locale": voice.locale,
    });

    if (speed != null) {
      await _tts.setSpeechRate(speed);
    }

    if (pitch != null) {
      await _tts.setPitch(pitch);
    }

    await _tts.speak(
      "Hello! I'm your Wealth Management assistant.",
    );
  }

  Future<void> speak(String text) async {
    await stop();
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }

  Future<void> setVoice(VoiceOption voice) async {
    await _tts.setVoice({
      "name": voice.name,
      "locale": voice.locale,
    });
  }
}
