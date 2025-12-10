import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getResponsiveHeight(245),
      width: context.getResponsiveWidth(250),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          SvgPicture.asset(AppVectors.placeHolderImage),
          // Expanded(child: )
        ],
      ),
    );
  }
}
