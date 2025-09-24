import 'package:broker_mobile/google/type/date.pb.dart';

class ConvertService {
  static Date stringToPBObjectDate(DateTime dt) {
    return Date()
      ..year = dt.year
      ..month = dt.month
      ..day = dt.day;
  }

  static String protoDateObjectToString(Date protoDate) {
    final year = protoDate.year.toString().padLeft(4, '0');
    final month = protoDate.month.toString().padLeft(2, '0');
    final day = protoDate.day.toString().padLeft(2, '0');

    if (year == '0000' && month == '00' && day == '00') {
      return '';
    }

    return "$year-$month-$day";
  }

  static double safeDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static int safeInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  static bool safeBool(dynamic value) {
    if (value is bool) return value;
    if (value is String) {
      return value.toLowerCase() == "true" || value == "1";
    }
    if (value is num) {
      return value != 0;
    }
    return false;
  }

  static String camelToTitle(String value) {
    if (value.isEmpty) return value;
    final result = value.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)} ${match.group(2)}',
    );
    return result[0].toUpperCase() + result.substring(1);
  }

  static DateTime? stringToDate(String value) {
    if (value.isEmpty) return null;
    try {
      final parts = value.split('-');
      if (parts.length != 3) return null;
      final year = int.tryParse(parts[0]);
      final month = int.tryParse(parts[1]);
      final day = int.tryParse(parts[2]);

      if (month == null || day == null || year == null) return null;

      return DateTime(year, month, day); // always midnight
    } catch (_) {
      return null;
    }
  }

  static String dateToString(DateTime? date) {
    if (date == null) return '';
    final mm = date.month.toString().padLeft(2, '0');
    final dd = date.day.toString().padLeft(2, '0');
    final yyyy = date.year.toString();
    return "$yyyy-$mm-$dd";
  }
}
