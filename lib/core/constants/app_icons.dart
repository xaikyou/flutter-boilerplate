import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppIcons {
  AppIcons._();

  static const double _kIconSize = 40;

  static List<Widget> navIcons = const [
    Icon(
      MingCute.home_4_line,
      size: _kIconSize,
    ),
    Icon(
      MingCute.document_line,
      size: _kIconSize,
    ),
    Icon(
      MingCute.scan_line,
      size: _kIconSize,
      color: Colors.white,
    ),
    Icon(
      MingCute.notification_line,
      size: _kIconSize,
    ),
    Icon(
      MingCute.user_3_line,
      size: _kIconSize,
    ),
  ];

  static List<Widget> navSelectedIcons = const [
    Icon(
      MingCute.home_4_fill,
      size: _kIconSize,
    ),
    Icon(
      MingCute.document_fill,
      size: _kIconSize,
    ),
    Icon(
      MingCute.scan_line,
      color: Colors.white,
    ),
    Icon(
      MingCute.notification_fill,
      size: _kIconSize,
    ),
    Icon(
      MingCute.user_3_fill,
      size: _kIconSize,
    ),
  ];
}
