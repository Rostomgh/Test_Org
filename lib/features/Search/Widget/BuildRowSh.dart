import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Search/Widget/CustomSh.dart';

class BuildERowSh extends StatelessWidget {
  const BuildERowSh({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomSh(
            colorB: AppColors.whiteColor,
            tesB: 'Today',
            colortesB: Color(0xff807A7A),
          ),
          SizedBox(width: 12),
          CustomSh(
              colorB: AppColors.primaryColor,
              tesB: 'Tomorrow',
              colortesB: AppColors.whiteColor),
          SizedBox(width: 12),
          CustomSh(
            colorB: AppColors.whiteColor,
            tesB: 'This week',
            colortesB: Color(0xff807A7A),
          ),
        ],
      ),
    );
  }
}
