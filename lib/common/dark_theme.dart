import 'package:av_musa_ocal/utils/gen/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.primary,
    colorScheme: ColorScheme(
        background: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.cream,
        secondary: AppColors.gold,
        onSecondary: AppColors.secondary,
        error: Color.fromARGB(255, 172, 22, 12),
        onError: Colors.redAccent,
        onBackground: AppColors.light,
        surface: AppColors.white,
        onSurface: AppColors.black),
  );
}
