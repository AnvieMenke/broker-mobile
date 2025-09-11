import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Notify {
  static void success(String message) {
    _showToast(message, Colors.green);
  }

  static void warning(String message) {
    _showToast(message, Colors.orange); // better contrast than yellow
  }

  static void info(String message) {
    _showToast(message, Colors.blueGrey);
  }

  static void error(String message) {
    _showToast(message, Colors.red);
  }

  static void _showToast(String message, Color bgColor) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: bgColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
