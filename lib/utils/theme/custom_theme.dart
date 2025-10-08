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
    final Brightness platformBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;

    if (platformBrightness == Brightness.dark) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.white,
        ),
      );
    }
  }
}
