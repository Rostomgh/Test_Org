import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class LogoS extends StatelessWidget {
  const LogoS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(Assets.Logo,height: AppSizes.heightLogo,width:AppSizes.widthLogo ,),
            const SizedBox(width: AppSizes.bettweenL,),
            const Text('Vent',style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700,color: AppColors.primaryColor),),
              const Text('Hub',style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700,color: AppColors.cyanColor),)
            
        ],
        ),
      ),
    );
  }
}
