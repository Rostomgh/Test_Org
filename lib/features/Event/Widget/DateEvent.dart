import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class DateEvent extends StatelessWidget {
  final String descp;
  final String descp1;
  final String tdate;
  final String loacl;
  const DateEvent({super.key, required this.descp, required this.descp1, required this.tdate, required this.loacl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(tdate,
            style: const TextStyle(
                fontFamily: 'MyFont',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.ColorDate)),
        const SizedBox(
          height: 3,
        ),
        Text(
          descp,
          style: const TextStyle(
            fontFamily: 'MyFont',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
        ),
        const SizedBox(height:1,),
          Text(
          descp1,
          style: const TextStyle(
            fontFamily: 'MyFont',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
        ),
        Row(
          children: [
            Image.asset(Assets.location,height: 14,width: 14,),
            const SizedBox(width: 6,),
            Text(loacl,style: const TextStyle(
              fontFamily: 'MyFont',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFF747688),
            ),)
          ],
        )
      ],
    );
  }
}