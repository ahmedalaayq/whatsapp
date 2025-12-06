import 'package:flutter/cupertino.dart';
import 'package:whatsapp/core/theme/app_colors.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  static final heading1Bold = TextStyle(
    fontSize: 32,fontWeight: FontWeight.bold,color: AppColors.whiteColor,
  );

  static final heading2Bold = TextStyle(
    fontSize: 28,fontWeight: FontWeight.bold,color: AppColors.whiteColor,
  );

  static final heading3Bold = TextStyle(
    fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.whiteColor,
  );
}
