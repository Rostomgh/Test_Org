import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Event/Widget/CustomEvantCreator.dart';
import 'package:test_org/features/Event/Widget/CustomOrganizer.dart';
import 'package:test_org/features/Event/Widget/CustomTime&Place.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            Assets.event,
          ),
          Positioned(
            top: 100,
            left: 0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                Assets.back,
                height: 22,
                width: 22,
              ),
            ),
          ),
          const Positioned(
            top: 50,
            left: 35,
            child: Text(
              'Event Details',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'International Band Music Concert',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w200,
                fontFamily: 'MyFont',
                color: AppColors.AuthC,
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.Smedia,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 21.0),
            child: CustomTimePlace(
              imgA: Assets.agenda,
              date: '14 December, 2021',
              place: 'Tuesday, 4:00PM - 9:00PM',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 21.0),
            child: CustomTimePlace(
              imgA: Assets.map,
              date: 'Gala Convention Center',
              place: '36 Guild Street London, UK ',
            ),
          ),
          const SizedBox(
            height: AppSizes.Smedia,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24),
            child: MyWidget(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'About Event',
              style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.AuthC,
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.ten,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Opacity(
              opacity: 0.6,
              child: Text(
                'Enjoy your favorite dish and a lovely time with your friends and family. Food from local food trucks will be available.',
                style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff0D0C26),
                ),
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.Ellips,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: CustomButton(
              onpress: () {},
              teB: 'Buy Ticket \$120',
            ),
          ),
        ],
      )),
        const Positioned(
                  top: 180,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: CustomEventCreator(),
                  ),
                ),
    ]));
  }
}
