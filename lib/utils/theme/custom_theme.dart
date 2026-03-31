import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static const Radius defaultRadius = Radius.circular(10);
  static const BorderRadius defaultBorderRadius =
      BorderRadius.all(defaultRadius);

  static const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.grey),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: defaultBorderRadius,
      borderSide: BorderSide.none,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    inputDecorationTheme: inputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
    inputDecorationTheme: inputDecorationTheme,
  );

  static void setSystemUIOverlayStyle() {
    // Enable edge-to-edge mode (Android only, ignored on iOS)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    final Brightness platformBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;

    // Set system overlay style with safe contrast and transparent bars
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarIconBrightness: platformBrightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
      systemNavigationBarIconBrightness: platformBrightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    ));
  }

  static Widget buildLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.grey[400],
      ),
    );
  }
}
