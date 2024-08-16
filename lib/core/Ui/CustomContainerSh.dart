import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class CustomContainerSh extends StatelessWidget {
  final String Nimg;
  
  final Color clr;
  const CustomContainerSh({super.key, required this.Nimg, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 63,
        width: 63,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Image.asset(
            Nimg,
            height: 29,
            width: 29,
          ),
        ));
  }
}
