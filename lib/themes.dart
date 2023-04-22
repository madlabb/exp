import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFF00061a),
  accentColor: Color(0xFF4169e8),
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xFFFFFFFF),
  accentColor: Color(0xFF4169e8),
  scaffoldBackgroundColor: Color(0xFF00061a),
);

ThemeData getCurrentTheme(bool isDarkTheme) {
  return isDarkTheme ? darkTheme : lightTheme;
}
