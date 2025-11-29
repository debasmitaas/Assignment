import 'package:assignment/config/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'inter',
    ),
    
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColor.darkBlue,
      selectionColor: AppColor.lightBlue.withValues(alpha: .3),
      selectionHandleColor: AppColor.darkBlue,
    ),
  );
}