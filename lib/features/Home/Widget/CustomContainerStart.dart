import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Home/Widget/CustomMenu.dart';
import 'package:test_org/features/Search/Widget/CustomSearchBar.dart';

class CustomContainerStart extends StatelessWidget {
  const CustomContainerStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.ColorC,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(33),
          bottomLeft: Radius.circular(33),
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: CustomMenu(), 
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: CustomSearchBar(
              imgFiltre: Assets.filtre2,
              ColorText: AppColors.whiteColor,
              
              fillcolor: AppColors.ColorC,clrB: AppColors.whiteColor,), 
          ),
        ],
      ),
    );
  }
}
