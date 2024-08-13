import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Profile/My%20Profile/Widget/CostumCInt.dart';

class BuildCProfil extends StatelessWidget {
  const BuildCProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Interest',  style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'MyFont',
                color: AppColors.AuthC,
              ),),
          ),
            SizedBox(height: AppSizes.ten,),
        Wrap(
          spacing: AppSizes.wrap,
          runSpacing: 10, 
          children: [
            CustomCInt(
              ColorC: Color(0xff6B7AED),
              width: 116,
              TextC: 'Games Online',
            ),
            CustomCInt(
              ColorC: Color(0xffEE544A),
              width: 81,
              TextC: 'Concert',
            ),
            CustomCInt(
              ColorC: Color(0xffFF8D5D),
              width: 66,
              TextC: 'MUsic',
            ),
            CustomCInt(
              ColorC: Color(0xff7D67EE),
              width: 51,
              TextC: 'Art',
            ),
            CustomCInt(
              ColorC: Color(0xff29D697),
              width: 67,
              TextC: 'Movie',
            ),
            CustomCInt(
              ColorC: Color(0xff39D1F2),
              width: 73,
              TextC: 'Others',
            ),
          ],
        ),
      ],
    );
  }
}
