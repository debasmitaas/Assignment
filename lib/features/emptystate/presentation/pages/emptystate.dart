import 'package:assignment/common/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Emptystate extends StatelessWidget {
  const Emptystate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Navbar(),
    );
  }
}