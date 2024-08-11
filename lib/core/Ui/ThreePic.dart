import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';

class ThreePic extends StatelessWidget {
  const ThreePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        child: 
      ),
      CircleAvatar(
        child: Image.asset(
          Assets.pic2,
          height: 24,
          width: 24,
        ),
      ),CircleAvatar(
        child: Image.asset(
          Assets.pic3,
          height: 24,
          width: 24,
        ),
      ),
    ]);
  }
}
