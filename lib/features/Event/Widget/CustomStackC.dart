import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomStackC extends StatelessWidget {
  final Function()? tap;
  const CustomStackC({super.key, this.tap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 295,
          height: 45,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 236, 236),
            borderRadius: BorderRadius.circular(15),
          ),
          
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: tap,
                child: Container(
                  width: 145,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'Upcoming',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            const Text(
              'PAST EVENT',
              style: TextStyle(
                  color: Color.fromARGB(255, 128, 126, 126),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
