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
}
