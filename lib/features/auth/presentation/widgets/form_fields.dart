import 'package:flutter/material.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/core/extensions/extension_methods.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const CustomTextField({
    required this.hintText,
    this.controller,
    this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.getResponsiveWidth(327),
        height: context.getResponsiveHeight(48),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: _inputDecoration(hintText),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;

  const PasswordTextField({
    required this.hintText,
    this.controller,
    super.key,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.getResponsiveWidth(327),
        height: context.getResponsiveHeight(48),
        child: TextField(
          controller: widget.controller,
          obscureText: _isObscured,
          decoration: _inputDecoration(widget.hintText).copyWith(
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility_off : Icons.visibility,
                color: AppColor.hintTextColor,
                size: 20,
              ),
              onPressed: () => setState(() => _isObscured = !_isObscured),
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: AppColor.hintTextColor, fontSize: 14),
    filled: true,
    fillColor: Colors.transparent,
    border: _borderStyle(),
    enabledBorder: _borderStyle(),
    focusedBorder: _borderStyle(),
  );
}

OutlineInputBorder _borderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: AppColor.lightGrey, width: 1.0),
  );
}