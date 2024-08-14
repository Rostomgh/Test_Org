import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Ui/CustomCard.dart';

class CustomCardInvit extends StatelessWidget {
  const CustomCardInvit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:35.0),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          xs: 10,
          child: Container(
              height: 127,
              width: 328,
              alignment: const Alignment(0, 0),
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.circular(14)
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(Assets.card,height: 164,width: 220,)),
                    const Positioned(
                      top: 10,
                      left: 8,
                      child: CustomCard())
                  
                ],
                
      
              )
        ),)
      ]),
    ); 
  }
}