import 'package:flutter/material.dart';

class CustomButttonNotif extends StatelessWidget {
  final Color ColorButton;
  final Color ColorText;
  final String text;
  const CustomButttonNotif(
      {super.key,
      required this.ColorButton,
      required this.ColorText,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 95,
      child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: ColorButton,
          child: Text(text,
              style: TextStyle(
                fontFamily: 'MyFont',
                color: ColorText,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ))),
    );
  }
}
