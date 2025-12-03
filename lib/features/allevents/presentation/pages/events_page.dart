import 'package:assignment/config/theme/app_color.dart';
import 'package:assignment/config/theme/app_text.dart';
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
          leading: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColor.textColor,
          ),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              Text('Near you',style: AppTextStyle.boldHeading2,),
              Text('See More',style: AppTextStyle.blueText,),

            ],
          ) , 
          

          ],
        ),
      ),
    );
  }
}
