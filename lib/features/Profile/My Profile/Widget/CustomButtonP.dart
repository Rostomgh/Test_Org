import 'package:flutter/material.dart';

class CustomButtonP extends StatelessWidget {
  final Color ColorButton;
  final Color ColorText;
  final String iconI;
  const CustomButtonP(
      {super.key, required this.ColorButton, required this.ColorText, required this.iconI});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: ColorButton,
        child: Row(
          children: [
            Image.asset(
              iconI,
              height: 22,
              width: 22,
            ),
            Text('Edit Profile',
                style: TextStyle(
                  fontFamily: 'MyFont',
                  color: ColorText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ));
  }
}
