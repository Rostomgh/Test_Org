import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Search/Widget/CustomCSearch.dart';

class AllSearch extends StatelessWidget {
  const AllSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCScreen(
          descp: 'A virtual evening of ',
          imgN: Assets.sea1,
          descp1: 'smooth jazz',
        ),
        SizedBox(
          height: AppSizes.notif,
        ),
        CustomCScreen(
          descp: 'Jo malone london’s ',
          imgN: Assets.sea2,
          descp1: 'mother’s day ',
        ),
        SizedBox(
          height: AppSizes.notif,
        ),
        CustomCScreen(
          descp: 'Women ’s leadership ',
          imgN: Assets.sea3,
          descp1: 'conference',
        ),
        SizedBox(
          height: AppSizes.notif,
        ),
        CustomCScreen(
          descp: 'International kids saf',
          imgN: Assets.sea4,
          descp1: 'parents night out',
        ),
        SizedBox(
          height: AppSizes.notif,
        ),
        CustomCScreen(
          descp: 'International gala',
          imgN: Assets.sea5,
          descp1: 'music festival',
        ),
      ],
    );
  }
}
