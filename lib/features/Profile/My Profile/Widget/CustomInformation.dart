import 'package:flutter/material.dart';

class CustomInformation extends StatelessWidget {
  const CustomInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Column(
          children: [
            Text('350',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'MyFont',
              color: Color(0xff120D26),
            ),),
            SizedBox(height:3,),
            Text('Following',style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'MyFont',
              color: Color(0xff747688),
            ),)
          ],
        
        ),
        Container(
          height:4,
          width: 15,
          color: const Color(0xffDDDDDD),
        ),
        const Column(
          children: [
            Text('346',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'MyFont',
              color: Color(0xff120D26),
            ),),
            SizedBox(height:3,),
            Text('Followers',style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'MyFont',
              color: Color(0xff747688),
            ),)
          ],
        
        ),
      ],
    );
  }
}
