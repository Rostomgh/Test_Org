import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Search/Widget/AllSearch.dart';
import 'package:test_org/features/Search/Widget/CustomSearchBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text(
            'Search',
            style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.AuthC),
          ),
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            CustomSearchBar(
              imgFiltre: Assets.filtre,
              ColorText: AppColors.whiteColor,
              
              fillcolor: AppColors.whiteColor,clrB: AppColors.primaryColor,),
            SizedBox(
              height: 20,
            ),
            AllSearch(),
          ],
        )));
  }
}
