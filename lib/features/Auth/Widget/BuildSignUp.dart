import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Auth/Widget/CustomInput.dart';
import 'package:test_org/features/Auth/Widget/CustomSocial.dart';

class CustomBuildSignUp extends StatelessWidget {
  final TextEditingController email = TextEditingController();
   CustomBuildSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left:29.0),
          child: Text(
            'Sign up',
            style: TextStyle(
              color: AppColors.AuthC,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'MyFont',
            ),
          ),
        ),
        const SizedBox(height: 20),
         CustomInput(
          icon: Icons.person_outline,
          hint: 'Full Name',
          obc: false,
          keyboardType: TextInputType.name,
          valid: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter Full Name';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
         CustomInput(
          icon: Icons.email_outlined,
          hint: 'Email',
          obc: false,
          keyboardType: TextInputType.emailAddress,
          valid: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter Email';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
         CustomInput(
          
          icon: Icons.lock_outline,
          hint: 'Password',
          obc: true,
          keyboardType: TextInputType.visiblePassword,
          valid: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter Password';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
         CustomInput(
          icon: Icons.lock_outline,
          hint: 'Confirm Password',
          obc: true,
          keyboardType: TextInputType.visiblePassword,
          valid: (value) {
            if (value == null || value.isEmpty) {
              return 'Confirm Password';
            }
            return null;
          },
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 52.0),
          child: CustomButton(
            onpress: (){},
            teB: 'SIGN IN',
          ),),
            const SizedBox(height: 36,),
              const Center(child: Text('OR',style: TextStyle(color: AppColors.Grey,fontSize: 20,fontWeight: FontWeight.w500,fontFamily: 'MyFont'),)),
              const SizedBox(height: AppSizes.bettweenL,),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: CustomSocial(LoginWith: 'Login with Google',img: Assets.google,onpress:(){} ,),
        
        ),
        const SizedBox(height: AppSizes.Smedia,),
         Padding(
           padding: const EdgeInsets.only(left: 50.0),
           child: CustomSocial(LoginWith: 'Login with Facebbok',img: Assets.facebbok,onpress:(){} ,),
         ),

      ],
    );
  }
}
