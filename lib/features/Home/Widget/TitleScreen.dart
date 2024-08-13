import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class TitleScreen extends StatelessWidget {
  final String title;

  const TitleScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'MyFont',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.AuthC),
          ),
          Spacer(),
          const Text(
            'See All',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff747688)),
          ),
          Image.asset(Assets.next, height: 9, width: 6.54),
        ],
      ),
    );
  }
}
