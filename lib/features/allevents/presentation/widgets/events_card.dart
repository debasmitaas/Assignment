import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const EventsCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.getResponsiveHeight(69),
        width: context.getResponsiveWidth(343),
        decoration: BoxDecoration(
          color: AppColor.blueGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            // Fixed width 80, full height
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Container(
                width: 80, // Fixed width
                height: double.infinity, // Full card height
                color: AppColor.lightBlue.withValues(alpha: .3),
                child: SvgPicture.asset(
                  AppVectors.placeHolderImage,
                  fit: BoxFit.cover, // Changed to cover to fill the space
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.boldHeading3,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: AppTextStyle.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}