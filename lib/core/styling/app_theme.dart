import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    secondaryHeaderColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    fontFamily: AppFonts.appFonts,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLineSyle,
      titleMedium: AppStyles.suptitleStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor
    )
  );
}
