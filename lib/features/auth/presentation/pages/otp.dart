import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:assignment/features/emptystate/presentation/pages/emptystate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),

              Text('Enter confirmation code', style: AppTextStyle.boldHeading2),
              Text(
                "A 4-digit code was sent to test@sidahq.com",
                style: AppTextStyle.subtitle,
              ),
              const SizedBox(height: 100),

              Padding(
                padding: EdgeInsets.all(context.getResponsiveWidth(20)),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    _otpCodeForm(context),
                    _otpCodeForm(context),
                    _otpCodeForm(context),
                    _otpCodeForm(context),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text('Resend Code', style: AppTextStyle.blueText),
              ),

              BlueButton(title: 'Continue', width: 327, height: 48 , onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Emptystate()));
              },)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _otpCodeForm(BuildContext context) {
  return Form(
    child: SizedBox(
      height: context.getResponsiveHeight(48),
      width: context.getResponsiveWidth(48),

      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            // borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColor.darkBlue, width: 1.5),
          ),
        ),
      ),
    ),
  );
}
