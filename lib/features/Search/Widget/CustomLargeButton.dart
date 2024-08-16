import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomLargeButton extends StatelessWidget {
  final double wid;
  final double hgh;
  final String imgB;
  final String tesB;
  final Color colortesB;
  const CustomLargeButton({super.key, required this.wid, required this.hgh, required this.imgB, required this.tesB, required this.colortesB});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wid,
      height: hgh,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: AppColors.whiteColor,
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(imgB,width: 20,height: 20,color: AppColors.primaryColor,),
              const SizedBox(width: 2,),
              Text(
                tesB,
                style: TextStyle(
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: colortesB),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Image.asset(Assets.goo),
              ),
            ],
          )),
    );
  }
}
