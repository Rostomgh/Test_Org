import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class MiniButton extends StatelessWidget {
  final Function()? onpressed;
  final String tit;
  const MiniButton({super.key, this.onpressed, required this.tit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 28,
      child: MaterialButton(
        onPressed: onpressed,
        shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: AppColors.primaryColor,
        child: Text(
          tit,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'MyFont'),
        ),
      ),
    );
  }
}