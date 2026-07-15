import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:broker_mobile/env.dart';

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

  static String formatCurrency(dynamic amount, {
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

  static String formatCurrencySymbol(dynamic amount, {
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
    if (num == null || num
        .toString()
        .isEmpty) {
      return '0';
    }
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

  static String formatMoneySuffix(num value, {bool showDecimal = false}) {
    final isNegative = value < 0;
    final absValue = value.abs().toDouble();

    String suffix = '';
    double displayValue = absValue;

    if (absValue >= 1_000_000_000_000) {
      displayValue = absValue / 1_000_000_000_000;
      suffix = 'T';
    } else if (absValue >= 1_000_000_000) {
      displayValue = absValue / 1_000_000_000;
      suffix = 'B';
    } else if (absValue >= 1_000_000) {
      displayValue = absValue / 1_000_000;
      suffix = 'M';
    } else if (absValue >= 1_000) {
      displayValue = absValue / 1_000;
      suffix = 'K';
    }

    String formattedValue;

    if (showDecimal) {
      formattedValue = displayValue.toStringAsFixed(2);
      formattedValue =
          formattedValue.replaceAll(RegExp(r'([.]*0+)(?!.*\d)'), '');
    } else {
      formattedValue = displayValue.toStringAsFixed(0);
    }

    return '${isNegative ? '-' : ''}\$$formattedValue$suffix';
  }

  static String formatMonthAbbreviation(int month) {
    const months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    return months[(month - 1).clamp(0, 11)];
  }

  static String formatPbDateTime(dynamic d, {String separator = '/'}) {
    if (d == null) return '';

    try {
      if (d is String) {
        final regex = RegExp(r'seconds:\s*(\d+)');
        final match = regex.firstMatch(d.replaceAll("\n", " "));
        if (match != null) {
          final seconds = int.tryParse(match.group(1) ?? '');
          if (seconds == null) return '--';
          final date = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
          final month = date.month.toString().padLeft(2, '0');
          final day = date.day.toString().padLeft(2, '0');
          final year = date.year.toString();
          final hour = date.hour.toString().padLeft(2, '0');
          final minute = date.minute.toString().padLeft(2, '0');
          return '$month$separator$day$separator$year $hour:$minute';
        }
        return '--';
      }

      if (d is Map && d.containsKey('seconds')) {
        final seconds = d['seconds'];
        if (seconds == null) return '--';
        final date = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
        final month = date.month.toString().padLeft(2, '0');
        final day = date.day.toString().padLeft(2, '0');
        final year = date.year.toString();
        final hour = date.hour.toString().padLeft(2, '0');
        final minute = date.minute.toString().padLeft(2, '0');
        return '$month$separator$day$separator$year $hour:$minute';
      }

      if (d is DateTime) {
        final month = d.month.toString().padLeft(2, '0');
        final day = d.day.toString().padLeft(2, '0');
        final year = d.year.toString();
        final hour = d.hour.toString().padLeft(2, '0');
        final minute = d.minute.toString().padLeft(2, '0');
        return '$month$separator$day$separator$year $hour:$minute';
      }

      return '--';
    } catch (e) {
      return '--';
    }
  }

  static String formatPercentage(String value) {
    if (value == '') {
      return '0%';
    }

    return '$value%';
  }

  static String formatDateStringtoIcu(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      final formatter = DateFormat("MMM-dd-yyyy");
      return formatter.format(date);
    } catch (_) {
      return dateStr;
    }
  }

  static String rewriteContentLinks({
    required String content,
  }) {
    String imagesBase = AppEnv.supportImagesLink;
    String webBase = AppEnv.supportAddress;

    imagesBase = imagesBase.replaceFirst(RegExp(r'/$'), '');
    webBase = webBase.replaceFirst(RegExp(r'/$'), '');

    // Markdown images: /user-guide/images/*
    content = content.replaceAllMapped(
      RegExp(r'!\[([^\]]*)\]\(\s*/?user-guide/images/([^)]+)\)',
          caseSensitive: false),
          (match) {
        final alt = match.group(1) ?? '';
        final file = match.group(2) ?? '';
        return '![$alt]($imagesBase/$file)';
      },
    );

    // Markdown download links: /download/*
    content = content.replaceAllMapped(
      RegExp(r'\[([^\]]+)\]\(\s*/?download/([^)]+)\)', caseSensitive: false),
          (match) {
        final text = match.group(1) ?? '';
        final path = match.group(2) ?? '';
        return '[$text]($webBase/download/$path)';
      },
    );
    debugPrint(content);
    return content;
  }
}
