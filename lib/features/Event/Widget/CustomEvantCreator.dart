import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/ThreePic.dart';

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
      child: const Row(
        children: [
          ThreePic(),
          SizedBox(width: 27),
          
        ],
      ),
    );
  }
}
