import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomCImage extends StatelessWidget {
  final String imgA;
  const CustomCImage({super.key, required this.imgA});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 211, 215, 248),
        borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(imgA,height: 30,width: 30,color: AppColors.primaryColor,),
      ),
    );
  }
}
