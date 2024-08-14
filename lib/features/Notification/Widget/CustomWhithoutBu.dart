import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';

class CustomWithoutBu extends StatelessWidget {
  final String name1;
  final String invite1;
  final String desc1;
  final String imginvite1;
  final String time1;
  const CustomWithoutBu(
      {super.key,
      required this.name1,
      required this.invite1,
      required this.desc1, required this.imginvite1, required this.time1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imginvite1,
          height: 45,
          width: 45,
        ),
        const SizedBox(width: AppSizes.rowI),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name1,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'MyFont',
                  color: AppColors.AuthC,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                invite1,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'MyFont',
                  color: Color(0xff706D6D),
                ),
              ),
            ],
          ),
          Text(
            desc1,
            style: const TextStyle(
              fontFamily: 'MyFont',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff706D6D),
            ),
          )
        ]),
          Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 3.0),
        child: Text(time1,style: const TextStyle(
          fontFamily: 'MyFont',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff3C3E56),
        ),),
      )
      ],
    );
  }
}
