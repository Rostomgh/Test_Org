import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Auth/Widget/CustomMiniInput.dart';

class CustomRowVerefication extends StatelessWidget {
  const CustomRowVerefication({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomMiniInput(),
        SizedBox(
          width: AppSizes.Ellips,
        ),
        CustomMiniInput(),
        SizedBox(
          width: AppSizes.Ellips,
        ),
        CustomMiniInput(),
        SizedBox(
          width: AppSizes.Ellips,
        ),
        CustomMiniInput(),
        SizedBox(
          width: AppSizes.Ellips,
        ),
      ],
    );
  }
}
