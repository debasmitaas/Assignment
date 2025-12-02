import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/features/auth/presentation/pages/login.dart';
import 'package:assignment/features/onboarding/presentation/widgets/preferences_list.dart';
import 'package:assignment/features/onboarding/presentation/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const SizedBox(height: 30),

                ProgressIndicatorWidget(),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Personalise your experience',
                    style: AppTextStyle.boldHeading1,
                  ),
                ),
                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Choose your interests.',
                    style: AppTextStyle.subtitle,
                  ),
                ),

                const SizedBox(height: 20),

                PreferencesList(
                  items: [
                    'User Interface',
                    'User Experience',
                    'User Research',
                    'UX Writing',
                    'User Testing',
                    'Service Design',
                    'Strategy',
                    'Design Systems',
                  ],
                ),
                BlueButton(
                  title: 'Next',
                  width: 327,
                  height: 48,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
