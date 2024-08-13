import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Notification/Widget/CustomCardInvite.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        title:  const Text(
            'Notification',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.AuthC),
          ),
      ),
      body:const Padding(
        padding: EdgeInsets.only(left:10.0,top: 20),
        child: 
    );
  }
}