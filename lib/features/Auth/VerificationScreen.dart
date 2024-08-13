import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Auth/Widget/CustomRowVerification.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 3,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            const Text(
              'Verification',
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.AuthC),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'We’ve sent you the verification code on  +1 2620 0323 7631',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.AuthC),
            ),
            const SizedBox(
              height: AppSizes.Ellips,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CustomRowVerefication(),
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 52.0),
              child: CustomButton(onpress: (){},teB:'Continue' ,),
            )
          ],
        ),
      ),
    );
  }
}
