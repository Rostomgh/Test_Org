import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Profile/My%20Profile/Widget/CustomInformation.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.AuthC),
          ),
          elevation: 3,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              Assets.user,
              height: 96,
              width: 96,
            ),
            const SizedBox(height: 20),
            const Text(
              'Ashfak Sayem',
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.AuthC),
            ),
            const SizedBox(height: AppSizes.ten,),
            const CustomInformation()
          ],
        ));
  }
}
