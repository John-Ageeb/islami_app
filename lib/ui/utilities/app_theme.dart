import 'package:flutter/material.dart';
import 'package:islami2/ui/utilities/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: AppColors.primary,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.accent),
      ),
      canvasColor: AppColors.primary,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accent,
        selectedIconTheme: IconThemeData(size: 36),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: AppColors.primaryDark,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.white),
      ),
      canvasColor: AppColors.primaryDark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentDark,
        selectedIconTheme: IconThemeData(size: 36),
      ));
}
