import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  AppIcons._();

  static const String _kHomeOutlinedIcon = 'assets/icons/home-outlined.svg';
  static const String _kHomeFilledIcon = 'assets/icons/home-filled.svg';
  static const String _kProfileOutlinedIcon =
      'assets/icons/profile-outlined.svg';
  static const String _kProfileFilledIcon = 'assets/icons/profile-filled.svg';
  static const String _kNotificationOutlinedIcon =
      'assets/icons/notification-outlined.svg';
  static const String _kNotificationFilledIcon =
      'assets/icons/notification-filled.svg';
  static const String _kFileOutlinedIcon = 'assets/icons/file-outlined.svg';
  static const String _kFileFilledIcon = 'assets/icons/file-filled.svg';
  static const String _kQrScannerIcon = 'assets/icons/qr-scanner.svg';

  static List<Widget> navIcons = [
    SvgPicture.asset(
      _kHomeOutlinedIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kFileOutlinedIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kQrScannerIcon,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kNotificationOutlinedIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kProfileOutlinedIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
  ];

  static List<Widget> navSelectedIcons = [
    SvgPicture.asset(
      _kHomeFilledIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kFileFilledIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kQrScannerIcon,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kNotificationFilledIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
    SvgPicture.asset(
      _kProfileFilledIcon,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    ),
  ];
}
