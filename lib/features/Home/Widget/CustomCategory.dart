import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final Color clr;
  final String img;
  final String Name;
  const CustomCategory({super.key, required this.clr, required this.img, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 107,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(21), color: clr),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Image.asset(
                img,
                height: 17,
                width: 17,
              ),
              const SizedBox(width: 8.30,),
                Text(
          Name,
          style: const TextStyle(
              fontFamily: 'MyFont',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white),
                ),
            ],
          ),
        ));
  }
}
