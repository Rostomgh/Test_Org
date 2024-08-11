import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Ui/ThreePic.dart';
import 'package:test_org/features/Home/Widget/CustomGrid.dart';
import 'package:test_org/features/Home/Widget/CustomInvite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(80.0),
            child: CustomGridEvent(
              local: '36 Guild Street London, UK ',
              nameEvent: 'International Band Mu...',imgGrid: Assets.grid1,),
          ),
          Padding(
            padding: EdgeInsets.only(left:28.0),
            child: CustomCardInvit(),
          )
        ],
      )
    
    );
  }
}