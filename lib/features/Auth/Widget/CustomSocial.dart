import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomSocial extends StatelessWidget {
  final Function() onpress;
  final String img;
  final String LoginWith;
  
  const CustomSocial({
    super.key,
    required this.onpress,
    required this.img,
    required this.LoginWith,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 273,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: MaterialButton(
        onPressed: onpress,
        child: Center( 
          child: Row(
            mainAxisSize: MainAxisSize.min, 
            children: [
              Image.asset(
                img,
                height: 26,
                width: 26,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                LoginWith,
                style: const TextStyle(
                  fontFamily: 'MyFont',
                  color: AppColors.AuthC,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
