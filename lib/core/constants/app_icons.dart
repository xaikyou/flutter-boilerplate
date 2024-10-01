import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_color.dart';
import 'package:icons_plus/icons_plus.dart';

class AppIcons {
  AppIcons._();

  static const double _kIconSize = 40;

  static const Widget kUserIcon = Icon(
    MingCute.user_1_line,
    size: _kIconSize,
  );

  static List<Widget> navIcons = [
    Icon(
      MingCute.home_4_line,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.document_line,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.notification_line,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.user_3_line,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
  ];

  static List<Widget> navSelectedIcons = [
    Icon(
      MingCute.home_4_fill,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.document_fill,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.notification_fill,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
    Icon(
      MingCute.user_3_fill,
      size: _kIconSize,
      color: AppColor.kBlack,
    ),
  ];
}
