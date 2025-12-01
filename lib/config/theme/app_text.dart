import 'package:flutter/material.dart';
import 'package:assignment/config/theme/app_color.dart';

class AppTextStyle {
  static const String _fontFamily = 'Inter';

  // 1. Bold Heading
  static TextStyle get boldHeading => TextStyle(
    fontSize: 24,
    fontFamily: _fontFamily,
    fontVariations: const [
      FontVariation('wght', 900),
    ],
    color: Colors.black, 
  );

  // 2. Subtitle
  static TextStyle get subtitle => TextStyle(
    fontSize: 12,
    fontFamily: _fontFamily,
    fontVariations: const [
      FontVariation('wght', 400),
    ],
    color: AppColor.grey, 
  );

  // 3. Normal Body Text
  // static TextStyle get body => TextStyle(
  //   fontSize: 14,
  //   fontFamily: _fontFamily,
  //   fontVariations: const [
  //     FontVariation('wght', 400),
  //   ],
  //   color: AppColor.darkBlue,
  // );

  // 4. Button Text
  static TextStyle get button => TextStyle(
    fontSize: 14,
    fontFamily: _fontFamily,
    fontVariations: const [
      FontVariation('wght', 600),
    ],
    color: Colors.white,
  );

  // 5. Blue Text Variant
  static TextStyle get blueText => TextStyle(
    fontSize: 12,
    fontFamily: _fontFamily,
    fontVariations: const [
      FontVariation('wght', 800),
    ],
    color: AppColor.darkBlue,
  );

  // 6. White Text Variant
  static TextStyle get whiteText => TextStyle(
    fontSize: 12,
    fontFamily: _fontFamily,
    fontVariations: const [
      FontVariation('wght', 600),
    ],
    color: Colors.white,
  );
}