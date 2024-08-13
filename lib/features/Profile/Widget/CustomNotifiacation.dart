import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class CutomNotification extends StatelessWidget {
  const CutomNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          const SizedBox(height:170 ,),
          Image.asset(
            Assets.notification,
            height: 170,
            width: 155,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'No Notifications!',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff344B67)),
          ),
          const SizedBox(height: AppSizes.ten,),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff344B67)),
            ),
          ),
      
        ],
      ),
    );
  }
}
