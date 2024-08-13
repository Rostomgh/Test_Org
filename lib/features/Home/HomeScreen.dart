import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/core/Ui/ThreePic.dart';
import 'package:test_org/features/Home/Widget/CustomBuildCategory.dart';
import 'package:test_org/features/Home/Widget/CustomCategory.dart';
import 'package:test_org/features/Home/Widget/CustomContainerStart.dart';
import 'package:test_org/features/Home/Widget/CustomGrid.dart';
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
        body: SingleChildScrollView(
          child: Column(
                children: [
          CustomContainerStart(),
          CustomBuildCategory(),
          SizedBox(height: AppSizes.Smedia,),
          TitleScreen(title: 'Upcoming Events'),
          SizedBox(height: AppSizes.ten,),
          CustomRowGrid(),
          SizedBox(height: AppSizes.Ellips,),
          CustomCardInvit(),
          SizedBox(height: AppSizes.Ellips,),
            TitleScreen(title: 'Nearby You'),

          
          ]),
        ));
  }
}
