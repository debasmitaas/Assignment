import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/features/allevents/presentation/widgets/pill_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leading: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColor.textColor,
            ),
          ),
          body: Column(
            children: [
              // MUST wrap ListView in SizedBox with fixed height
              SizedBox(
                height: 50, // Fixed height for horizontal ListView
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    PillButton(text: 'ALL EVENTS', onPressed: () {}),
                    const SizedBox(width: 8),
                    PillButton(text: 'CONCERTS', onPressed: () {}),
                    const SizedBox(width: 8),
                    PillButton(text: 'TECHNOLOGY', onPressed: () {}),
                    const SizedBox(width: 8),
                    PillButton(text: 'SPORTS', onPressed: () {}),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Near you', style: AppTextStyle.boldHeading2),
                  Text('See More', style: AppTextStyle.blueText),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}