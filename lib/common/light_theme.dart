import 'package:av_musa_ocal/utils/gen/colors.gen.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: ColorScheme(
        background: AppColors.primary,
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 236, 234, 234),
        onPrimary: AppColors.gold,
        secondary: AppColors.secondary,
        onSecondary: AppColors.light,
        error: Color.fromARGB(255, 172, 22, 12),
        onError: Colors.redAccent,
        onBackground: AppColors.primary,
        surface: AppColors.white,
        onSurface: AppColors.black),
  );
}
