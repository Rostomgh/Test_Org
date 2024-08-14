import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Event/Widget/CustomCImage.dart';

class CustomTimePlace extends StatelessWidget {
  final String date;
  final String place;
  final String imgA;
  const CustomTimePlace({super.key, required this.date, required this.place, required this.imgA});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomCImage(imgA: imgA),
        const SizedBox(width: 15,),
        Column(children: [
          Text(date,style: const TextStyle(
            fontFamily: 'MyFont',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.AuthC
          ),),
          const SizedBox(height: 1,),
              Text(place,style: const TextStyle(
            fontFamily: 'MyFont',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff747688),
          ),),

        ],)
      ]
    );
  }
}