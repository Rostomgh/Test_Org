import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/core/Ui/CustomContainerSh.dart';

class SH extends StatelessWidget {
  final String name;
  final String Nimg;
  final Color clr;
  const SH({super.key, required this.name, required this.Nimg, required this.clr});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomContainerSh(Nimg: Nimg, clr: clr,),
          const SizedBox(
              height: AppSizes.ten,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'MyFont',
                color: Color(0xff120D26),
              ),
            ),
        
        ],
    );
  }
}
