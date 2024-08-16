import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomSh extends StatelessWidget {
  final String tesB;
  final Color colortesB;
  final Color colorB;
  const CustomSh(
      {super.key,
      required this.tesB,
      required this.colortesB,
      required this.colorB});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 58,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: colorB,
          onPressed: () {},
          child: Text(
            tesB,
            style: TextStyle(
                fontFamily: 'MyFont',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: colortesB),
          )),
    );
  }
}
