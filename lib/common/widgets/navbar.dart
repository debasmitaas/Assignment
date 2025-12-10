import 'package:assignment/config/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColor.darkBlue,
      unselectedItemColor: AppColor.grey,

      iconSize: 24,
      elevation: 8,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidCompass),
          label: 'Explore', 
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.pen),
          label: 'Projects', 
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidEnvelope),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidUser),
          label: 'Profile', 
        ),
      ],
    );
  }
}
