import 'package:flutter/material.dart';
import 'package:test_org/features/Home/Widget/CustomContainerStart.dart';
import 'package:test_org/features/Home/Widget/CustomMenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainerStart(),
    
    );
  }
}