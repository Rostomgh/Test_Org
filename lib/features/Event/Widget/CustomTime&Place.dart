import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/features/Event/Widget/CustomCImage.dart';

class CustomTimePlace extends StatelessWidget {
  const CustomTimePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCImage(imgA: Assets.agenda,),
        Column(children: [],)
      ]
    );
  }
}