import 'package:assignment/core/extensions/extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(
      height: context.getResponsiveHeight(88),
      width:context.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.compass),
          FaIcon(FontAwesomeIcons.pen),
          FaIcon(FontAwesomeIcons.envelope),
          FaIcon(FontAwesomeIcons.user),
        ]
      ),
    ),
    );
  }
}

// Widget buildNavItem(String title) {

//   }
