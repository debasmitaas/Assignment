import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double width;
  final double height;

  const BlueButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          context.getResponsiveWidth(width),
          context.getResponsiveHeight(height),
        ),

        backgroundColor: AppColor.darkBlue,
        foregroundColor: AppColor.backgroundColor,
textStyle: AppTextStyle.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(title),
    );
  }
}

class BlueOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double width;
  final double height;

  const BlueOutlinedButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          context.getResponsiveWidth(width),
          context.getResponsiveHeight(height),
        ),

        backgroundColor: Colors.transparent,
        foregroundColor: AppColor.darkBlue,
        
textStyle: AppTextStyle.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: BorderSide(color: AppColor.darkBlue, width: 2),
      ),
      child: Text(title),
    );
  }
}
