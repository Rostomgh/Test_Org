import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/Date.dart';

class CustomCScreen extends StatelessWidget {
  final String imgN;
  final String descp;
  final String descp1;

  const CustomCScreen({
    super.key,
    required this.imgN,
    required this.descp,
    required this.descp1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 327,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 2, // Blur radius
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              imgN,
              height: 92,
              width: 79,
            ),
          ),
          const SizedBox(width: 18),
          Padding(
            padding: const EdgeInsets.only(right: 27.0),
            child: Date(descp: descp, descp1: descp1),
          ),
        ],
      ),
    );
  }
}
