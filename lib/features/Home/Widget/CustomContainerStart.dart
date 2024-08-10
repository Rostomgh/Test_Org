import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Home/Widget/CustomMenu.dart';

class CustomContainerStart extends StatelessWidget {
  const CustomContainerStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration:  const BoxDecoration(
        color:AppColors.ColorC,
         borderRadius: BorderRadius.only(
          bottomRight:Radius.circular(33),
          bottomLeft:Radius.circular(33)
           )
      ),
      child: CustomMenu(),
    );
  }
}
