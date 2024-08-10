import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomSocial extends StatelessWidget {
  final Function() onpress;
  final String img;
  final String LoginWith;
  const CustomSocial({super.key, required this.onpress, required this.img, required this.LoginWith});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 273,
      child: MaterialButton(
        onPressed: onpress,
        child: Row(children: [
          Image.asset(img),
          const SizedBox(width: 20,),
          Text(
            LoginWith,
            style: const TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          )
        ]),
      ),
    );
  }
}
