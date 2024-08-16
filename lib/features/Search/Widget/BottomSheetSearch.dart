import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Search/Widget/BuildRowC.dart';
import 'package:test_org/features/Search/Widget/BuildRowSh.dart';
import 'package:test_org/features/Search/Widget/CustomLargeButton.dart';
import 'package:test_org/features/Search/Widget/CustomSh.dart';

class CustomCBottomSheet extends StatelessWidget {
  const CustomCBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Filtre',
            style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
          ),
        ),
        const SizedBox(height: AppSizes.Smedia),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: BuildRowCSh(),
          
        ),
        const SizedBox(height: AppSizes.Ellips),
          const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Time&Date',
            style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
          ), 
        ),
        const SizedBox(height: AppSizes.ten,),
        const BuildERowSh(),
        const SizedBox(height: AppSizes.ten,),
        const CustomLargeButton(hgh: 42,wid: 241,colortesB: Color(0xff807A7A),tesB: 'Choose from calender',imgB: Assets.agenda,),
        const SizedBox(height: AppSizes.ten,),
          const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Location',
            style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
          ), 
        ),
          const SizedBox(height: AppSizes.ten,),
        const Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: CustomLargeButton(hgh: 60,wid: 334,colortesB: Color(0xff141736),tesB: 'New Yourk, USA',imgB: Assets.location,),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Image.asset(Assets.graph),

        ),
        SizedBox(height:45),
        const Padding(
          padding: EdgeInsets.only(left: 50.0,right: 20),
          child: Row(
            children: [
              CustomSh(colorB: AppColors.whiteColor,tesB: 'Reset',colortesB: AppColors.blackColor,),
              SizedBox(width: 19,),
              CustomSh(colortesB: AppColors.whiteColor,tesB: 'APPLY',colorB: AppColors.primaryColor,),
          
            ],
          ),
        )



        

      ],
    );
  }
}
