import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/BuildSignUp.dart';
import 'package:test_org/features/Auth/Widget/CustomTextRich.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 30,),
            CustomBuildSignUp(),
            SizedBox(
            height: AppSizes.Smedia,
          ),
          CustomTextRich(
            tes1: 'Already have an account? ',
            tes2: 'Signin',
            onTapP: () {
              Navigator.pushNamed(context, '/layout');
            },
          )
          ],
        )
      )

       
    );
  }
}