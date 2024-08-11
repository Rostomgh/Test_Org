import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class CustomGridEvent extends StatelessWidget {
  final String imgGrid;
  final String nameEvent;
  const CustomGridEvent(
      {super.key, required this.imgGrid, required this.nameEvent});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: [
      ResponsiveGridCol(
        lg: 12,
        child: Container(
            height: AppSizes.heighGrid,
            width: AppSizes.widthgrid,
            alignment: const Alignment(0, 0),
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  imgGrid,
                  height: 131,
                  width: 218,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  nameEvent,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MyFont',
                      color: AppColors.blackColor),
                )
              ],
            )),
      )
    ]);
  }
}
