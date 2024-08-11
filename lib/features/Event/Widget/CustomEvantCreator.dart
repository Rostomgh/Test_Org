import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Ui/ThreePic.dart';
import 'package:test_org/features/Event/Widget/MiniButton.dart';

class CustomEventCreator extends StatelessWidget {
  const CustomEventCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 295,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child:  Row(
        children: [
          const ThreePic(),
          const SizedBox(width: 27),
          MiniButton(tit: 'invite',onpressed: (){},colorB: AppColors.primaryColor,colorT: AppColors.whiteColor,)
        ],
      ),
    );
  }
}
