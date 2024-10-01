import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';

class CustomFabWidget extends StatelessWidget {
  const CustomFabWidget({
    super.key,
    this.label = '',
    this.icon,
    this.isExtended = true,
    this.onPressed,
  });

  final String label;
  final Widget? icon;
  final bool isExtended;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: AppFont.h3(label),
      icon: icon,
      isExtended: isExtended,
      shape: isExtended ? const StadiumBorder() : const CircleBorder(),
    );
  }
}
