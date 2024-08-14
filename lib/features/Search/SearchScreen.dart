import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Search/Widget/AllSearch.dart';

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
      body: SingleChildScrollView(child: AllSearch()),
    );
  }
}