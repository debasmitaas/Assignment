import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:assignment/features/auth/presentation/pages/otp.dart';
import 'package:assignment/features/auth/presentation/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: AppColor.backgroundColor,
        body: Column(
          children: [
            SvgPicture.asset(
              AppVectors.placeHolderImage,
              width: context.screenWidth,
              height: context.getResponsiveHeight(312),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(context.getResponsiveWidth(20)),
                child: SizedBox(
                  width: context.screenWidth,
                  // height: context.getResponsiveHeight(500),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome!',
                          style: AppTextStyle.boldHeading1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(hintText: 'Email Address'),
                      const SizedBox(height: 20),
                      PasswordTextField(hintText: 'Password'),
                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: Text(
                            'Forgot Password?',
                            style: AppTextStyle.blueText,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      BlueButton(
                        title: 'Login',
                        width: 327,
                        height: 48,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ));
                        },
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Text('Not a member?', style: AppTextStyle.subtitle),
                          Text('  Register Now', style: AppTextStyle.blueText),
                        ],
                      ),

                      const Divider(color: AppColor.dividerColor),
                      const SizedBox(height: 10),

                      Text('Or continue with', style: AppTextStyle.subtitle),

                      const SizedBox(height: 10),
                      _socialMediaSignInOptions([
                        AppVectors.google,
                        AppVectors.apple,
                        AppVectors.facebook,
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _socialMediaSignInOptions(List<String> svgPaths) {
  return Row(
    mainAxisAlignment: .center,
    children: svgPaths
        .map(
          (svg) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(svg, width: 40, height: 40),
            ),
          ),
        )
        .toList(),
  );
}
