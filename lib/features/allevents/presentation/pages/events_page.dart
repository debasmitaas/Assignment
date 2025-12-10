import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
import 'package:assignment/features/allevents/presentation/widgets/events_card.dart';
import 'package:assignment/features/allevents/presentation/widgets/pill_button.dart';
import 'package:assignment/features/allevents/presentation/widgets/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: const Padding(
            padding: EdgeInsets.all(10.0),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColor.textColor,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Pills ListView
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
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

                // Near you header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Near you', style: AppTextStyle.boldHeading2),
                    Text('See More', style: AppTextStyle.blueText),
                  ],
                ),
                const SizedBox(height: 16),

                // Ticket cards ListView
                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TicketCard(
                        width: 250,
                        height: 245,
                        date: 'MAR 05',
                        title: 'Maroon 5',
                        subtitle: 'Recife, Brazil',
                      ),
                      const SizedBox(width: 12),
                      TicketCard(
                        width: 250,
                        height: 245,
                        date: 'APR 12',
                        title: 'Alicia Keys',
                        subtitle: 'Olinda, Brazil',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Your events header
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Your events', style: AppTextStyle.boldHeading2),
                ),
                const SizedBox(height: 16),

                EventsCard(title: 'Alicia Keys', subtitle: 'Olinda, Brazil'),
                const SizedBox(height: 16),

                EventsCard(title: 'Michael Jackson', subtitle: 'Recife, Brazil'),

                const SizedBox(height: 16),

                // Selling out header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Selling out', style: AppTextStyle.boldHeading2),
                    Text('See More', style: AppTextStyle.blueText),
                  ],
                ),
                                const SizedBox(height: 16),

                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TicketCard(
                        width: 250,
                        height: 245,
                        date: 'MAR 05',
                        title: 'Maroon 5',
                        subtitle: 'Recife, Brazil',
                      ),
                      const SizedBox(width: 12),
                      TicketCard(
                        width: 250,
                        height: 245,
                        date: 'APR 12',
                        title: 'Alicia Keys',
                        subtitle: 'Olinda, Brazil',
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
