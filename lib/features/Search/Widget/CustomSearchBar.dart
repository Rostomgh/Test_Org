import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomSearchBar extends StatelessWidget {
  final Color fillcolor;
  final Color clrB;
  final Color ColorText;
  final String imgFiltre;
  final Function() ? onpress;  // Optional callback for the filter icon

  const CustomSearchBar({
    super.key,
    required this.fillcolor,
    required this.clrB,
    required this.ColorText,
    required this.imgFiltre,
    this.onpress,  // Optional parameter for filter icon action
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: ColorText,
            fontFamily: 'MyFont',
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: clrB,
            size: 35,
          ),
          suffixIcon: IconButton(
            onPressed: onpress,  // Action when the filter icon is pressed
            icon: Image.asset(
              imgFiltre,
              width: 75,
              height: 32,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: fillcolor,
        ),
      ),
    );
  }
}
