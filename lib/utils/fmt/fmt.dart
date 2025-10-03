import 'package:decimal/decimal.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';

class FormatUtils {
  static String cleanErrorMessage(Object err) {
    // Handle gRPC errors
    if (err is GrpcError) {
      return err.message ?? 'An unexpected gRPC error occurred.';
    }

    // Handle Exception or Error types
    if (err is Exception || err is Error) {
      final msg = err.toString();
      return msg.replaceFirst(RegExp(r'^(Exception|Error):\s*'), '').trim();
    }

    // Handle plain strings
    if (err is String) {
      return err.trim();
    }

    // Fallback for unknown types
    return 'An unexpected error occurred.';
  }

  static String formatPbDate(dynamic d, {String separator = '/'}) {
    if (d == null) return '';

    if (d is String) {
      final regex = RegExp(r'year:\s*(\d+)\s*month:\s*(\d+)\s*day:\s*(\d+)');
      final match = regex.firstMatch(d.replaceAll("\n", " "));
      if (match != null) {
        final year = match.group(1)!;
        final month = match.group(2)!.padLeft(2, '0');
        final day = match.group(3)!.padLeft(2, '0');
        return '$month$separator$day$separator$year';
      }
      return '--';
    }

    try {
      final year = d.year?.toString() ?? '';
      final month = d.month?.toString().padLeft(2, '0') ?? '';
      final day = d.day?.toString().padLeft(2, '0') ?? '';
      if (year.isEmpty || month.isEmpty || day.isEmpty) return '';
      return '$month$separator$day$separator$year';
    } catch (e) {
      return '--';
    }
  }

  static String formatCurrency(
    dynamic amount, {
    int decimalCount = 2,
    String decimal = '.',
    String thousands = ',',
  }) {
    decimalCount = decimalCount.abs();
    if (amount == null) return '\$0.00';

    final value = Decimal.tryParse(amount.toString()) ?? Decimal.zero;
    final negativeSign = value < Decimal.zero ? '-\$' : '\$';

    final absVal = value.abs();
    final fixed = absVal.toStringAsFixed(decimalCount);

    final i = Decimal.tryParse(fixed)?.toBigInt().toString() ?? '0';
    final j = i.length > 3 ? i.length % 3 : 0;

    final formatted = negativeSign +
        (j != 0 ? i.substring(0, j) + thousands : '') +
        i.substring(j).replaceAllMapped(
            RegExp(r'(\d{3})(?=\d)'), (m) => '${m[1]}$thousands') +
        (decimalCount > 0 ? decimal + fixed.split('.')[1] : '');

    return formatted;
  }

  static String formatCurrencySymbol(
    dynamic amount, {
    String currency = 'USD',
    int decimalCount = 6,
  }) {
    try {
      final formatter = NumberFormat.currency(
        locale: 'en_US',
        symbol: '',
        name: currency,
        decimalDigits: decimalCount,
      );
      return formatter.format(amount);
    } catch (e) {
      return formatCurrency(amount, decimalCount: decimalCount);
    }
  }

  static String formatQty(dynamic num) {
    if (num == null || num.toString().isEmpty) return '0';
    final d = Decimal.tryParse(num.toString());
    if (d == null) return '0';

    final str = d.toStringAsFixed(16).replaceAll(RegExp(r'\.?0+$'), '');
    final reg = RegExp(r'\B(?=(\d{3})+(?!\d))');
    return str.replaceAllMapped(reg, (m) => ',');
  }

  static String formatStatus(String value) {
    if (value.isEmpty) return '';
    return value[0].toUpperCase() + value.substring(1);
  }

  static String formatNote(String value) {
    if (value.length < 30) return value;
    return '${value.substring(0, 30)} ...';
  }
}
