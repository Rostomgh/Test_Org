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
            SizedBox(height: 3), // Add a divider-like space between the texts
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
        const SizedBox(width: 15), // Add space between the columns
        Container(
          height: 20, // Adjust the height to match the text
          width: 2, // Make the divider narrower
          color: const Color(0xffDDDDDD),
        ),
        const SizedBox(
            width: 25), // Add space between the divider and the next column
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
