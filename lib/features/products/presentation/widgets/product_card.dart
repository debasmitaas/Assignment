import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
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
    return SizedBox(
      height: context.getResponsiveHeight(200.5),
      width: context.getResponsiveWidth(189),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  AppVectors.placeHolderImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: AppColor.blueGrey,
              child: Padding(
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
                    ),
                    const SizedBox(height: 1),

                    Text(productPrice, style: AppTextStyle.boldHeading3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
