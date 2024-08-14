import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextFormField(
        
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: const TextStyle(
            color: AppColors.blackColor,
            fontFamily: 'MyFont',
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
          prefixIcon: const Icon(Icons.search,color: AppColors.primaryColor,size: 35,),
          suffixIcon: IconButton(
            icon: Image.asset(Assets.filtre,width: 75,height: 32,),
            onPressed: () {}
            
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.whiteColor,
        ),
        
      ),
    );
  }
}