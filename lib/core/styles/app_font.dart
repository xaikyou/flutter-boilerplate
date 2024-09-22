import 'package:flutter/material.dart';

class AppFont {
  AppFont._();

  static const double _h1 = 34.0;
  static const double _h2 = 30.0;
  static const double _h3 = 24.0;

  static Widget _heading(
    String text, {
    double? fontSize,
    Color? textColor,
    bool isBold = false,
    bool isCheckOverflow = false,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? _h3,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        overflow: isCheckOverflow ? TextOverflow.ellipsis : null,
        color: textColor,
      ),
    );
  }

  static Widget h1(String text,
      {Color? textColor, bool isBold = false, bool isCheckOverflow = false}) {
    return _heading(
      text,
      fontSize: _h1,
      textColor: textColor,
      isBold: isBold,
      isCheckOverflow: isCheckOverflow,
    );
  }

  static Widget h2(String text,
      {Color? textColor, bool isBold = false, bool isCheckOverflow = false}) {
    return _heading(
      text,
      fontSize: _h2,
      textColor: textColor,
      isBold: isBold,
      isCheckOverflow: isCheckOverflow,
    );
  }

  static Widget h3(String text,
      {Color? textColor, bool isBold = false, bool isCheckOverflow = false}) {
    return _heading(
      text,
      fontSize: _h3,
      textColor: textColor,
      isBold: isBold,
      isCheckOverflow: isCheckOverflow,
    );
  }
}
