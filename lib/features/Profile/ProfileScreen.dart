import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Profile/My%20Profile/Widget/CustomInformation.dart';
import 'package:test_org/features/Profile/Widget/BuildRowButton.dart';
import 'package:test_org/features/Profile/Widget/CustomPartAccount.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
          const SizedBox(
            height: AppSizes.ten,
          ),
          const CustomInformation(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: BuildRowButton(),
          ),
          const SizedBox(
            height: AppSizes.Ellips,
          ),
          const Row(
            children: [
              CustomPartAccount(
                text: 'ABOUT',
                routeName: '/About',
              ),
              SizedBox(
                width: AppSizes.safeS,
              ),
              CustomPartAccount(
                text: 'EVENT',
                routeName: '/notif',
              ),
              SizedBox(
                width: 72
              ),
              CustomPartAccount(
                text: 'REVIEW',
                routeName: '/About',
              ),
            ],
          ),
        ]));
  }
}
