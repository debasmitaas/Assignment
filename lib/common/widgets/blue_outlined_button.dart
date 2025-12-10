import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';

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
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: Size(
          context.getResponsiveWidth(width),
          context.getResponsiveHeight(height),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: AppColor.darkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: const BorderSide(
          color: AppColor.darkBlue,
          width: 2,
        ),
      ),
      child: Text(
        title,
        style: AppTextStyle.blueText,
      ),
    );
  }
}