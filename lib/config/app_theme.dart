import 'package:flutter/material.dart';
import 'package:habit_tracker/src/config.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.kBackground,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.kPrimary,
      tertiary: AppColors.kActionTertiary
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.kContentPrimary),
      bodyMedium: TextStyle(color: AppColors.kContentSecondary),
      bodySmall: TextStyle(color: AppColors.kContentDisabled),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.kActionTertiary
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.kInfoPrimary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.kInputBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.kPrimary),
      ),
      filled: true,
      fillColor: AppColors.kInputBackground,
    ),
  );
}
