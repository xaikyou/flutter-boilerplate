import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_color.dart';

class AppTheme {
  AppTheme._();

  static final _lightThene = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
    ),
    scaffoldBackgroundColor: AppColor.kGrey,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.kWhite,
      elevation: 10,
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      dividerHeight: 3,
      dividerColor: AppColor.kDarkGrey,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3),
        ),
      ),
      indicatorColor: AppColor.kBlack,
      labelColor: AppColor.kBlack,
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    ),
    cardTheme: CardTheme(
      color: AppColor.kWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColor.kGrey,
      thickness: 2,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      elevation: 5,
      focusElevation: 5,
      hoverElevation: 5,
      disabledElevation: 5,
      highlightElevation: 5,
      backgroundColor: AppColor.kWhite,
    ),
  );

  static final _darkThene = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
    ),
    scaffoldBackgroundColor: AppColor.kBlack,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.kWhite,
      elevation: 10,
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      dividerHeight: 3,
      dividerColor: AppColor.kDarkGrey,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3),
        ),
      ),
      indicatorColor: AppColor.kBlack,
      labelColor: AppColor.kBlack,
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    ),
    cardTheme: CardTheme(
      color: AppColor.kWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColor.kGrey,
      thickness: 2,
    ),
  );

  static ThemeData get lightThem => _lightThene;
  static ThemeData get darkThem => _darkThene;
}
