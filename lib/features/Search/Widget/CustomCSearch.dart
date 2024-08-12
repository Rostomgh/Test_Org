import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/Date.dart';

class CustomCScreen extends StatelessWidget {
  final String imgN;
  final String descp;
  const CustomCScreen({super.key, required this.imgN, required this.descp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 112,
        width: 327,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Image.asset(
                imgN,
                height: 92,
                width: 79,
              ),
            ),
            const SizedBox(width:18,),
            Date(descp: descp,)
          ],
        ),
      ),
    );
  }
}
