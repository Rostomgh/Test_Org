import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class ThreePic extends StatelessWidget {
  const ThreePic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage(Assets.pic1),
      ),
      CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage(Assets.pic2),
      ),
      CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage(Assets.pic3),
      ),
      SizedBox(
        width: 12,
      ),
      Text(
        '+20 Going',
        style: TextStyle(
            fontFamily: 'MyFont',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.ColorPlus),
      )
    ]);
  }
}
