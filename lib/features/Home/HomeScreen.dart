import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Ui/ThreePic.dart';
import 'package:test_org/features/Home/Widget/CustomGrid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(80.0),
        child: CustomGridEvent(nameEvent: 'International Band Mu...',imgGrid: Assets.grid1,),
      )
    
    );
  }
}