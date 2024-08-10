import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomTextRich extends StatelessWidget {
  final void Function()? onTapP;
  final String tes1;
  final String tes2;
  const CustomTextRich({super.key, this.onTapP,  required this.tes1, required this.tes2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text( tes1,
            style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'MyFont',color: AppColors.AuthC),
                ),
        const SizedBox(width: 5,),
          InkWell(
          onTap: onTapP,
          child: Text(  tes2,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                fontFamily: 'MyFont'
               )),
        ),
      ],
    );
  }
}