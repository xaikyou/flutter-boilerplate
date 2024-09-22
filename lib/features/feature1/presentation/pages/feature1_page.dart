import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/context_extension.dart';
import 'package:flutter_boilerplate/core/utils/extensions/widget_extension.dart';

class Feature1Page extends StatelessWidget {
  const Feature1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppFont.h1(context.loc.hello).center(),
    );
  }
}
