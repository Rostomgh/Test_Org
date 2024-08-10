import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/BuildAuthS.dart';
import 'package:test_org/features/Auth/Widget/CustomInput.dart';
import 'package:test_org/features/Auth/Widget/CustomTextRich.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

final TextEditingController email = TextEditingController();

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
          SizedBox(
            height: AppSizes.safeS,
          ),
          Image.asset(
            Assets.Logo,
            height: 58,
            width: 55,
          ),
          const SizedBox(
            height: AppSizes.bettweenL,
          ),
          const Text(
            'EventHub',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w400,
              color: AppColors.TitleColor,
              fontFamily: 'MyFont',
            ),
          ),
          const SizedBox(
            height: AppSizes.Ellips,
          ),
          const BuildAuthScreen(),
          SizedBox(
            height: AppSizes.Smedia,
          ),
          CustomTextRich(
            tes1: 'Don’t have an account?',
            tes2: 'Sign up',
            onTapP: () {
              Navigator.pushNamed(context, '/signup');
            },
          )
        ])));
  }
}
