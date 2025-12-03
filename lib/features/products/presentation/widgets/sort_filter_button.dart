import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          minimumSize: Size(0, context.getResponsiveHeight(36)),

          padding: const EdgeInsets.symmetric(horizontal: 12),
          foregroundColor: AppColor.grey,
          side: const BorderSide(color: AppColor.lightGrey, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(FontAwesomeIcons.arrowDown, size: 14),
            SizedBox(width: 6),
            Text(
              'Sort',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 6),
            FaIcon(FontAwesomeIcons.chevronDown, size: 12),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: Size(0, context.getResponsiveHeight(36)),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        foregroundColor: AppColor.grey,
        side: const BorderSide(color: AppColor.lightGrey, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.tune, size: 18),
          const SizedBox(width: 8),
          const Text(
            'Filter',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 8),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.darkBlue,
            ),
            child: Text(
              '2',
              style: AppTextStyle.whiteText.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
