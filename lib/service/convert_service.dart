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
}
