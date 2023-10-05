import 'package:exam/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  // static const TextStyle appBarTextStyle = TextStyle(
  //     fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.white);

  // static const TextStyle taskTitleTextStyle = TextStyle(
  //     fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.primary);

  // static const TextStyle taskDescriptionTextStyle = TextStyle(
  //     fontWeight: FontWeight.normal,
  //     fontSize: 14,
  //     color: AppColors.lightBlackText);

  // static const TextStyle bottomSheetTextStyle = TextStyle(
  //     fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.text);

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
