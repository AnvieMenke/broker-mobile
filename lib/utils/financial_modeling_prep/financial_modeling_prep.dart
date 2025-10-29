import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LogoFetcher {
  static final Map<String, String> _logoCache = {};
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    final cachedData = _prefs?.getString('logoCache');
    if (cachedData != null) {
      final Map<String, dynamic> data = jsonDecode(cachedData);
      _logoCache.addAll(data.map((k, v) => MapEntry(k, v.toString())));
    }
  }

  static Future<void> _saveCache() async {
    if (_prefs != null) {
      await _prefs!.setString('logoCache', jsonEncode(_logoCache));
    }
  }

  static Future<String> fetch(String symbol) async {
    symbol = symbol.trim().toUpperCase();
    if (symbol.isEmpty) return '';

    if (_logoCache.containsKey(symbol) && _logoCache[symbol]!.isNotEmpty) {
      return _logoCache[symbol]!;
    }

    final logoUrl = 'https://financialmodelingprep.com/image-stock/$symbol.png';
    try {
      final resp = await http.get(Uri.parse(logoUrl));
      if (resp.statusCode == 200) {
        _logoCache[symbol] = logoUrl;
        await _saveCache();
        return logoUrl;
      }
    } catch (e, st) {
      debugPrint('Error checking logo for $symbol: $e\n$st');
    }

    _logoCache[symbol] = '';
    await _saveCache();
    return '';
  }
}

class SymbolAvatar extends StatefulWidget {
  final String symbol;

  const SymbolAvatar({
    super.key,
    required this.symbol,
  });

  @override
  State<SymbolAvatar> createState() => _SymbolAvatarState();
}

class _SymbolAvatarState extends State<SymbolAvatar> {
  String? _logoUrl;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadLogo();
  }

  Future<void> _loadLogo() async {
    final url = await LogoFetcher.fetch(widget.symbol);
    if (!mounted) return;
    setState(() {
      _logoUrl = url.isNotEmpty ? url : null;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final letter =
        widget.symbol.isNotEmpty ? widget.symbol[0].toUpperCase() : '?';

    Widget fallbackLetter() => Text(
          letter,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        );

    if (_loading || _logoUrl == null) {
      return CircleAvatar(
        radius: 18,
        backgroundColor: Colors.blue.shade100,
        child: fallbackLetter(),
      );
    }

    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.transparent,
      child: ClipOval(
        child: Image.network(
          _logoUrl!,
          width: 36,
          height: 36,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) {
            return CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blue.shade100,
              child: fallbackLetter(),
            );
          },
        ),
      ),
    );
  }
}
