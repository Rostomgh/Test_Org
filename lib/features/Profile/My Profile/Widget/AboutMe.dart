import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'MyFont',
              color: AppColors.AuthC,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'MyFont',
                color: Color.fromARGB(255, 91, 91, 94),
              ))
        ],
      ),
    );
  }
}
