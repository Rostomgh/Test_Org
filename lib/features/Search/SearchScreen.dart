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
          title: const Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Text(
              'Search',
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.AuthC),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 10),
              child: CustomSearchBar(
                onpress: () {
                  Navigator.pushNamed(context, '/filtre');
                },
                imgFiltre: Assets.filtre,
                ColorText: Color.fromARGB(255, 121, 118, 118),
                fillcolor: AppColors.whiteColor,
                clrB: AppColors.primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 21.0, right: 22),
              child: AllSearch(),
            ),
          ],
        )));
  }
}
