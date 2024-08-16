import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Search/Widget/SH.dart';

class BuildRowCSh extends StatelessWidget {
  const BuildRowCSh({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SH(Nimg:Assets.sport,clr:AppColors.primaryColor,name: 'Sports',),
          SizedBox(width: 15,),
          SH(Nimg:Assets.music,clr:AppColors.whiteColor,name: 'Music',),
          SizedBox(width: 15,),
          SH(Nimg:Assets.art,clr:AppColors.primaryColor,name: 'Art',),
          SizedBox(width: 15,),
          SH(Nimg:Assets.food,clr:AppColors.whiteColor,name: 'Food',),
          SizedBox(width: 15,),
            SH(Nimg:Assets.food,clr:AppColors.whiteColor,name: 'Food',),
          SizedBox(width: 15,),
      
        ],
      ),
    );
  }
}
