import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_fonts.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: AppFonts.fontFamily,
    primaryColor: AppColors.whatsAppColorGreen,
    secondaryHeaderColor: AppColors.secondaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(double.infinity, 60),
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1.5),
      ),
      hintStyle: TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
