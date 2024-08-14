import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class Date extends StatelessWidget {
  final String descp;
  final String descp1;
  const Date({super.key, required this.descp, required this.descp1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('1st  May- Sat -2:00 PM',
            style: TextStyle(
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
      ],
    );
  }
}
