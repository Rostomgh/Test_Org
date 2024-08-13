import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Home/Widget/CustomCategory.dart';

class CustomBuildCategory extends StatelessWidget {
  const CustomBuildCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            CustomCategory(
                Name: 'Sports', clr: Color(0xffF0635A), img: Assets.sport),
            SizedBox(
              width: AppSizes.ten,
            ),
            CustomCategory(
                Name: 'Music', clr: Color(0xffF59762), img: Assets.sport),
            SizedBox(
              width: AppSizes.ten,
            ),
            CustomCategory(
                Name: 'Food', clr: Color(0xff29D697), img: Assets.sport),
            SizedBox(
              width: AppSizes.ten,
            ),
            CustomCategory(
                Name: 'Movie', clr: Color(0xff46CDFB), img: Assets.sport),
          ],
        ),
      ),
    );
  }
}
