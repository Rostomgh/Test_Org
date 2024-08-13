import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/features/Home/Widget/CustomGrid.dart';

class CustomRowGrid extends StatelessWidget {
  const CustomRowGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Row(
        children: [
          Expanded( // Using Expanded to ensure it takes up available space within the Row
            child: CustomGridEvent(
              local: '36 Guild Street London, UK ',
              nameEvent: 'International Band Mu...', 
              imgGrid: Assets.grid1,
            ),
          ),
        ],
      ),
    );
  }
}
