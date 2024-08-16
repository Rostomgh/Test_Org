import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomIcon.dart';

class CustomButton extends StatelessWidget {
  final Function() onpress;
  final String teB;
  const CustomButton({super.key, required this.onpress, required this.teB});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 275,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: AppColors.primaryColor,
        onPressed: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                teB,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'MyFont',
                  color: AppColors.whiteColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Customicon(imgN: Assets.Button,h:  AppSizes.Ellips,w:  AppSizes.Ellips,),  
          ],
        ),
      ),
    );
  }
}
