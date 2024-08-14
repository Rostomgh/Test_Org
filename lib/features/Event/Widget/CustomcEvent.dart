import 'package:flutter/material.dart';
import 'package:test_org/features/Event/Widget/DateEvent.dart';

class CustomCEvent extends StatelessWidget {
  final String imgN;
  final String descp;
  final String descp1;
  final String tdate;
  final String local;
  const CustomCEvent({super.key, required this.imgN, required this.descp, required this.descp1, required this.tdate, required this.local});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 327,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
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
          const SizedBox(
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27.0),
            child: DateEvent(
              descp: descp,
              descp1: descp1,
              tdate: tdate,
              loacl: local,
            ),
          )
        ],
      ),
    );
  }
}
