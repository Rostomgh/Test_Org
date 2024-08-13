import 'package:flutter/material.dart';

class CustomButtonP extends StatelessWidget {
  final Color ColorButton;
  final Color ColorText;
  final String iconI;
  final String text;
  
  final Color ? borderColor;
  const CustomButtonP(
      {super.key, required this.ColorButton, required this.ColorText, required this.iconI, required this.text, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 154,
    
      child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: borderColor != null 
              ? BorderSide(color: borderColor!, width: 2)
              : BorderSide.none, 
        ),
          
          color: ColorButton,
          child: Row(
            children: [
              Image.asset(
                iconI,
                height: 22,
                width: 22,
              ),
              const SizedBox(width: 12),
              Text(text,
                  style: TextStyle(
                    fontFamily: 'MyFont',
                    color: ColorText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          )),
    );
  }
}
