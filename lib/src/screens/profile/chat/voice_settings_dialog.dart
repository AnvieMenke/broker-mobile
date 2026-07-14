import 'package:broker_mobile/utils/speech/text_to_speech.dart';
import 'package:broker_mobile/utils/speech/voice_option.dart';
import 'package:flutter/material.dart';

class VoiceSettingsDialog extends StatefulWidget {
  final TextToSpeechService tts;
  final VoiceOption? selectedVoice;

  const VoiceSettingsDialog({
    super.key,
    required this.tts,
    this.selectedVoice,
  });

  @override
  State<VoiceSettingsDialog> createState() =>
      _VoiceSettingsDialogState();
}

class _VoiceSettingsDialogState
    extends State<VoiceSettingsDialog> {
  List<VoiceOption> _voices = [];

  VoiceOption? _selected;

  bool _loading = true;

  double _speed = .45;
  double _pitch = 1.0;

  @override
  void initState() {
    super.initState();
    _loadVoices();
  }

  Future<void> _loadVoices() async {
    final voices = await widget.tts.getAvailableVoices();

    setState(() {
      _voices = voices;
      _selected = widget.selectedVoice ??
          (voices.isNotEmpty ? voices.first : null);
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Voice Settings"),
      content: SizedBox(
        width: 420,
        height: 520,
        child: _loading
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : Column(
          children: [
            Expanded(
              child: RadioGroup<VoiceOption>(
                groupValue: _selected,
                onChanged: (VoiceOption? value) {
                  setState(() {
                    _selected = value;
                  });
                },
                child: ListView.builder(
                  itemCount: _voices.length,
                  itemBuilder: (_, index) {
                    final voice = _voices[index];

                    return RadioListTile<VoiceOption>(
                      value: voice,
                      title: Text(voice.name),
                      subtitle: Text(voice.locale),
                      secondary: IconButton(
                        tooltip: "Preview",
                        icon: const Icon(Icons.play_arrow),
                        onPressed: () async {
                          await widget.tts.previewVoice(
                            voice,
                            speed: _speed,
                            pitch: _pitch,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Speech Speed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _speed,
              min: .2,
              max: 1.0,
              divisions: 8,
              label: _speed.toStringAsFixed(2),
              onChanged: (value) async {
                setState(() {
                  _speed = value;
                });

                await widget.tts.setSpeechRate(value);
              },
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pitch",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _pitch,
              min: .5,
              max: 2.0,
              divisions: 15,
              label: _pitch.toStringAsFixed(2),
              onChanged: (value) async {
                setState(() {
                  _pitch = value;
                });

                await widget.tts.setPitch(value);
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await widget.tts.stop();

            if (context.mounted) {
              Navigator.pop(context);
            }
          },
          child: const Text("Cancel"),
        ),
        FilledButton(
          onPressed: _selected == null
              ? null
              : () async {
            await widget.tts.stop();

            await widget.tts.setSpeechRate(_speed);
            await widget.tts.setPitch(_pitch);
            await widget.tts.setVoice(_selected!);

            if (context.mounted) {
              Navigator.pop(
                context,
                _selected,
              );
            }
          },
          child: const Text("Save"),
        ),
      ],
    );
  }
}