import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Invite your friends',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: 'MyFont',
          color: AppColors.blackColor,
        ),),
        Text('Get \$20 for ticket',style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: 'MyFont',
          color: Color(0xff484D70),
        ),)
      ],
    );
  }
}
