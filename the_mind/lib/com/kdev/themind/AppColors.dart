import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Colors
  static const Color dialogBackground = Color(0xff083f91);
  static const Color dialogForeground = Color(0xff0c5dd7);
  static const Color dialogBorder = Colors.black;
  static const Color textFieldBorder = Colors.white60;

  static const Color whiteText = Colors.white60;
  static const Color whiteTextField = Colors.white;

  static const Color themeBackground = Color(0xff0c5dd7);
  static const Color themeForeground = Color(0xff000000);

  static const Color buttonGradient1 = Colors.black54;
  static const Color buttonGradient2 = Colors.indigoAccent;

  static bool vibrationActive = true;

  /// Convert a String to a Color
  static Color colorFromString(value) {
    if (value == Colors.amber.toString()) return Colors.amber;
    if (value == Colors.orange.toString()) return Colors.orange;
    if (value == Colors.red.toString()) return Colors.red;
    if (value == Colors.pink.toString()) return Colors.pink;
    if (value == Colors.purple.toString()) return Colors.purple;
    if (value == Colors.blue.toString()) return Colors.blue;
    if (value == Colors.cyan.toString()) return Colors.cyan;
    if (value == Colors.teal.toString()) return Colors.teal;
    if (value == Colors.purple.toString()) return Colors.purple;
    if (value == Colors.green.toString()) return Colors.green;
    return Colors.teal;
  }
}
