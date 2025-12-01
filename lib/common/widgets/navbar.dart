import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  Widget _navIcon(IconData icon) {
    return FaIcon(icon, color: AppColor.grey, size: 20);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: context.getResponsiveHeight(88),
        width: context.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navIcon(FontAwesomeIcons.compass),
            _navIcon(FontAwesomeIcons.pen),
            _navIcon(FontAwesomeIcons.solidEnvelope),
            _navIcon(FontAwesomeIcons.solidUser),
          ],
        ),
      ),
    );
  }
}

// Widget buildNavItem(String title) {

//   }
