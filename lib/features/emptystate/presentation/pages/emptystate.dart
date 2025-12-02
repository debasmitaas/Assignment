import 'package:assignment/common/widgets/blue_button.dart';
import 'package:assignment/common/widgets/navbar.dart';
import 'package:assignment/config/assets/app_vectors.dart';
import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:assignment/features/products/presentation/pages/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Emptystate extends StatefulWidget {
  const Emptystate({super.key});

  @override
  State<Emptystate> createState() => _EmptystateState();
}

class _EmptystateState extends State<Emptystate> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        titleTextStyle: AppTextStyle.boldHeading2,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColor.darkBlue,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CupertinoSlidingSegmentedControl(
              children: {
                0: _buildSegment('To do'),
                1: _buildSegment('In progress'),
                2: _buildSegment('Finished'),
              },
              groupValue: groupValue,
              onValueChanged: (int? newValue) {
                setState(() => groupValue = newValue ?? 0);
              },
            ),
            const SizedBox(height: 200),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SvgPicture.asset(
                    AppVectors.placeHolderImage,
                    width: context.getResponsiveWidth(100),
                    height: context.getResponsiveHeight(100),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Nothing here. For now.',
                  style: AppTextStyle.boldHeading1,
                ),
                Text(
                  "This is where you’ll find your finished projects.",
                  style: AppTextStyle.subtitle,
                ),
                const SizedBox(height: 60),

                BlueButton(
                  title: 'Start a project',
                  width: 150,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductsPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: const Navbar(),
    );
  }
}

Widget _buildSegment(String text) => Padding(
  padding: const EdgeInsets.all(8),
  child: Text(
    text,
    style: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      color: AppColor.textColor,
      fontVariations: const [FontVariation('wght', 800)],
    ),
  ),
);
