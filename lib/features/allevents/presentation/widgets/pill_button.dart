import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:flutter/material.dart';

class PillButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const PillButton({
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    super.key,
  });

  @override
  State<PillButton> createState() => _PillButtonState();
}

class _PillButtonState extends State<PillButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 90,
      height: widget.height ?? 24,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
          widget.onPressed?.call();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? AppColor.darkBlue : AppColor.lightBlue,
          foregroundColor: isSelected ? Colors.white : AppColor.darkBlue,
          shape: const StadiumBorder(),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          widget.text,
          style: isSelected 
              ? AppTextStyle.pillbuttonwhiteText 
              : AppTextStyle.pillbuttonblueText,
        ),
      ),
    );
  }
}