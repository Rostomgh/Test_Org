import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Event/Widget/CustomEvantCreator.dart';
import 'package:test_org/features/Event/Widget/CustomOrganizer.dart';

import 'Widget/CustomTime&Place.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  Assets.event,
                ),
                Positioned(
                    top: 45,
                    left: 6,
                    child: Image.asset(
                      Assets.back,
                      height: 22,
                      width: 22,
                    )),
                const Positioned(
                    top: 40,
                    left: 35,
                    child: Text(
                      'Event Details',
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    )),
                const Positioned(
                  bottom: 4,
                  // left: 40,
                  right: 40,
                  child: CustomEventCreator(),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.Smedia,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                'International Band Music Concert',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MyFont',
                    color: AppColors.AuthC),
              ),
            ),
              const SizedBox(
              height: AppSizes.Smedia,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: MyWidget(),
            ),
              const SizedBox(
              height: AppSizes.Smedia,
            ),
            const CustomTimePlace()
          ],
        ),
      ),
    );
  }
}
