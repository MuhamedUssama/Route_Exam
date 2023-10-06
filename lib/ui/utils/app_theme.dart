import 'package:exam/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static const TextStyle primaryTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle secondaryTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle normalTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle seeTextStyle = TextStyle(
    color: AppColors.accent1,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle cardTitleTextStyle = TextStyle(
    color: AppColors.positive,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: AppColors.unClickedIcon,
    ),
  );
}
