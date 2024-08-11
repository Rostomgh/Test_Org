import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/core/Ui/ThreePic.dart';

class CustomGridEvent extends StatelessWidget {
  final String imgGrid;
  final String nameEvent;
  const CustomGridEvent(
      {super.key, required this.imgGrid, required this.nameEvent});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: [
      ResponsiveGridCol(
        sm: 6,
        child: Container(
            height: AppSizes.heighGrid,
            width: AppSizes.widthgrid,
            alignment: const Alignment(0, 0),
            color: Colors.red,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imgGrid,
                    height: 131,
                    width: 218,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  nameEvent,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MyFont',
                      color: AppColors.blackColor),
                ),
                const SizedBox(height: AppSizes.ten,),
                const Padding(
                  padding: EdgeInsets.only(left:15.0),
                  child: ThreePic(),
                ),
              ],
            )),
      )
    ]);
  }
}
