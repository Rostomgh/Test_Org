import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Notification/Widget/CustomNameInvite.dart';

class CustomCardInvite extends StatelessWidget {
  final String time;
  final String imginvite;
  final String name;
  final String invite;
  final String desc;
  const CustomCardInvite({super.key, required this.imginvite, required this.time, required this.name, required this.invite, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      Image.asset(
        imginvite,
        height: 45,
        width: 45,
      ),
      const SizedBox(width: AppSizes.rowI),
       CustomNameInvite(invite:invite ,name: name,desc:desc,),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 3.0),
        child: Text(time,style: const TextStyle(
          fontFamily: 'MyFont',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff3C3E56),
        ),),
      )
    ]);
  }
}
