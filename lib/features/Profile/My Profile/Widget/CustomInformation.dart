import 'package:flutter/material.dart';

class CustomInformation extends StatelessWidget {
  const CustomInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            Text(
              '350',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'MyFont',
                color: Color(0xff120D26),
              ),
            ),
            SizedBox(height: 3), 
            Text(
              'Following',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'MyFont',
                color: Color(0xff747688),
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Container(
          height: 20,
          width: 2, 
          color: const Color(0xffDDDDDD),
        ),
        const SizedBox(
            width: 25), 
        const Column(
          children: [
            Text(
              '346',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'MyFont',
                color: Color(0xff120D26),
              ),
            ),
            Text(
              'Followers',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'MyFont',
                color: Color(0xff747688),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
