import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/core/Ui/ThreePic.dart';

class CustomGridEvent extends StatelessWidget {
  final String imgGrid;
  final String nameEvent;
  final String local;
  const CustomGridEvent(
      {super.key,
      required this.imgGrid,
      required this.nameEvent,
      required this.local});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: [
      ResponsiveGridCol(
        xs:7,
        child: Container(
            height: AppSizes.heighGrid,
            width: AppSizes.widthgrid,
            alignment: const Alignment(0, 0),
            color: AppColors.whiteColor,
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
                const SizedBox(
                  height: AppSizes.ten,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: ThreePic(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.location,
                        height: 15,
                        width: 12,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        local,
                        style: const TextStyle(
                            fontFamily: 'MyFont',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2B2849)),
                      ),
                    ],
                  ),
                )
              ],
            )),
      )
    ]);
  }
}
