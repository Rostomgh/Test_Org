import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Profile/My%20Profile/Widget/CustomButtonP.dart';

class BuildRowButton extends StatelessWidget {
  const BuildRowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButtonP(
          ColorButton: AppColors.primaryColor,
          ColorText: AppColors.whiteColor,
          iconI: Assets.add,
          text: 'Follow',
        ),
        SizedBox(width: 17),
          CustomButtonP(
          ColorButton: AppColors.whiteColor,
          ColorText: AppColors.primaryColor,
          iconI: Assets.message,
          text: 'Massages',
        ),

      ],
    );
  }
}
