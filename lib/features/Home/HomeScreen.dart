import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Home/Widget/CustomBuildCategory.dart';
import 'package:test_org/features/Home/Widget/CustomContainerStart.dart';
import 'package:test_org/features/Home/Widget/CustomDrawer.dart';
import 'package:test_org/features/Home/Widget/CustomInvite.dart';
import 'package:test_org/features/Home/Widget/CustomRowGrid.dart';
import 'package:test_org/features/Home/Widget/TitleScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainerStart(),
                SizedBox(height:35 ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TitleScreen(title: 'Upcoming Events'),
                ),
                SizedBox(height: AppSizes.ten),
                CustomRowGrid(),
                SizedBox(height: AppSizes.Ellips),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30),
                  child: CustomCardInvit(),
                ),
                SizedBox(height: AppSizes.Ellips),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TitleScreen(title: 'Nearby You'),
                ),
              ],
            ),
          ),
          Positioned(
            left: 31,
            right: 24,
            top: 160,
            child: CustomBuildCategory(),
          ),
        ],
      ),
    );
  }
}
