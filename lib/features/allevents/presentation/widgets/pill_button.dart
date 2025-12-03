import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class PillButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;
  final double? width;
  final double? height;

  const PillButton({
    required this.text,
    required this.onPressed,
    this.isSelected = false,
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.getResponsiveWidth(84),
      height: height ?? context.getResponsiveHeight(24),
      child: GFButton(
        onPressed: onPressed,
        color: isSelected ? AppColor.darkBlue : AppColor.lightBlue,
        shape: GFButtonShape.pills,
        type: GFButtonType.solid,
        text: text,
        textColor: isSelected ? Colors.white : AppColor.darkBlue,
        textStyle: AppTextStyle.blueText2,
      ),
    );
  }
}