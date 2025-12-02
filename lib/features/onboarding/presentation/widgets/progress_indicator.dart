import 'package:assignment/config/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 10.0,
      percent: 0.5,
      progressColor: AppColor.darkBlue,
      barRadius: const Radius.circular(5),
      animation: true,
    );
  }
}