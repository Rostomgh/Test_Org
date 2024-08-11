import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Event/Widget/MiniButton.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(Assets.org,height: 44,width: 44,),
        const SizedBox(width: 13),
        const Column(
          children: [
            Text('Ashfak Sayem',style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor
            ),),
            Text('Organizer',style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff706E8F),
            ),)
          ],
        ) ,
        const Spacer(),
        MiniButton(colorB:const Color(0xff4AD2E4),colorT: AppColors.primaryColor,tit: 'Follow',onpressed: (){}) ,
      ],

    );
  }
}
