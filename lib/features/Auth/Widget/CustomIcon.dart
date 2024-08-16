import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class Customicon extends StatelessWidget {
  final String imgN;
  final double w;
  final double h;
  const Customicon({super.key, required this.imgN, required this.w, required this.h});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imgN,height:h,width:w );
  }
}
