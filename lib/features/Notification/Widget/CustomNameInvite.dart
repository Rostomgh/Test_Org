import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Notification/Widget/CustomButtonNotif.dart';

class CustomNameInvite extends StatelessWidget {
  final String name;
  final String invite;
  final String desc;
  const CustomNameInvite({super.key, required this.name, required this.invite, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between name and invite
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'MyFont',
                color: AppColors.AuthC,
              ),
            ),
            const SizedBox(width: 3,),
            Text(
              invite,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'MyFont',
                color: Color(0xff706D6D),
              ),
            ),
          ],
        ),
        Text(desc,style: const TextStyle(
          fontFamily: 'MyFont',
          fontSize: 14,
          fontWeight: FontWeight.w400,
            color: Color(0xff706D6D),
        ),),
        const SizedBox(height: 8),
        const Row(
          children: [
            CustomButttonNotif(
              ColorButton: AppColors.whiteColor,
              ColorText: Color(0xff706D6D),
              text: 'Reject',
            ),
            SizedBox(width: AppSizes.ten),
            CustomButttonNotif(
              ColorButton: AppColors.primaryColor,
              ColorText: AppColors.whiteColor,
              text: 'Accept',
            ),
          ],
        ),
      ],
    );
  }
}
