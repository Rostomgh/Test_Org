import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

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
      
      body:SingleChildScrollView(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image .asset(Assets.Logo,height: 58,width: 55,),
            const SizedBox(height: AppSizes.bettweenL,),
            const Text('EventHub',style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w400,
              color: AppColors.TitleColor,
              fontFamily: 'MyFont',
            ),)
          ],
          
        )
      )
    );
  }
}
