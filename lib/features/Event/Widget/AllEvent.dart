import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/features/Event/Widget/CustomcEvent.dart';

class AllEvent extends StatelessWidget {
  const AllEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCEvent(imgN: Assets.sea2,
          tdate: 'Wed, Apr 28 5:30 PM',
          descp: 'Jo Malone London’s ',
          descp1: 'Day Presents',
          local: 'Radius Gallery • Santa Cruz',
        ),
        SizedBox(height: 12,),
          CustomCEvent(imgN: Assets.sea1,
          tdate: 'Wed, Apr 28 5:30 PM',
          descp: 'A Virtual Evening of ',
          descp1: 'Smooth Jaz',
          local: 'Lot 13 • Oakland, CA',
        ),
          SizedBox(height: 12,),
          CustomCEvent(imgN: Assets.sea3,
          tdate: 'Wed, Apr 28 5:30 PM',
          descp: 'Womens Leadership',
          descp1: 'Conference 2021',
          local: '53 Bush St • San Francisco,',
        ),

      ],
    );
  }
}
