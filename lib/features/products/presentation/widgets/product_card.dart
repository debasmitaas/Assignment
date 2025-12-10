import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SvgPicture.asset(
              AppVectors.placeHolderImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            width: double.infinity,
            color: AppColor.blueGrey,
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 6.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  productPrice,
                  style: AppTextStyle.boldHeading3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}