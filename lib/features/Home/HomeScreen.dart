import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/ThreePic.dart';

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
        padding: EdgeInsets.all(150.0),
        child: ThreePic(),
      )
    
    );
  }
}