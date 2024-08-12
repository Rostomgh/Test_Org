import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomCInt extends StatelessWidget {
  final double width;
  final Color ColorC;
  final String TextC;
  const CustomCInt({super.key, required this.width, required this.ColorC, required this.TextC});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Container(
        height: 31,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorC,
        ),
        child: Center(
          child: Text(TextC,style: const TextStyle(
            fontFamily: 'MyFont',
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.whiteColor,
          ),),
        ),
      ),
    );
  }
}
