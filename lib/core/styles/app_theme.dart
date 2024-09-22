import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final _lightThene = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
  );

  static final _darkThene = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  );

  static ThemeData get lightThem => _lightThene;
  static ThemeData get darkThem => _darkThene;
}
