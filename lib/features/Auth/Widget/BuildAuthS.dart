import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Auth/Widget/CustomInput.dart';
import 'package:test_org/features/Auth/Widget/CustomSocial.dart';

class BuildAuthScreen extends StatelessWidget {
  const BuildAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Text(
            'Sign in',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.AuthC),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 37.0,right: 30),
          child: CustomInput(
            icon: Icons.email_outlined,
            hint: 'abc@email.com',
            obc: true,
            keyboardType: TextInputType.emailAddress,
            valid: (value) {
              if (value == '') {
                return 'Enter Email';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 37.0,right: 30),
          child: CustomInput(
            icon: Icons.email_outlined,
            hint: 'Your password',
            obc: true,
            keyboardType: TextInputType.emailAddress,
            valid: (value) {
              if (value == '') {
                return 'Enter Email';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 52.0),
          child: CustomButton(
            onpress: () {
              Navigator.pushReplacementNamed(context, '/layout');
            },
            teB: 'SIGN IN',
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Center(
            child: Text(
          'OR',
          style: TextStyle(
              color: AppColors.Grey,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'MyFont'),
        )),
        const SizedBox(
          height: AppSizes.bettweenL,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: CustomSocial(
            LoginWith: 'Login with Google',
            img: Assets.google,
            onpress: () {
              Navigator.pushNamed(context, '/verifier');
            },
          ),
        ),
        const SizedBox(
          height: AppSizes.Smedia,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: CustomSocial(
            LoginWith: 'Login with Facebbok',
            img: Assets.facebbok,
            onpress: () {},
          ),
        ),
      ],
    );
  }
}
