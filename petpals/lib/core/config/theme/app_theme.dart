import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    
    fontFamily: 'Bainsley',
     textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColor.brown, // Cursor color for text fields
      selectionColor: AppColor.brown.withValues(alpha: .3), // Text selection highlight
      selectionHandleColor: AppColor.brown, // Selection handle color
    ),
    
  );
  
}
