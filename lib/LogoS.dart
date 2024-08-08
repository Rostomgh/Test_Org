import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.Logo,
              height: AppSizes.heightLogo,
              width: AppSizes.widthLogo,
            ),
            SizedBox(width: AppSizes.bettweenL),
            const Text(
              'Vent',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
            const Text(
              'Hub',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: AppColors.cyanColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
