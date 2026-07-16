import 'package:file_picker/file_picker.dart';

class AttachmentPicker {
  static Future<PlatformFile?> pick() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      withData: true,
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'png',
        'jpg',
        'jpeg',
        'doc',
        'docx',
        'xls',
        'xlsx',
        'csv',
      ],
    );

    if (result == null) return null;

    return result.files.first;
  }
}