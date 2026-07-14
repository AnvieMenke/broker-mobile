class VoiceOption {
  final String name;
  final String locale;

  const VoiceOption({
    required this.name,
    required this.locale,
  });

  @override
  String toString() => "$name ($locale)";
}