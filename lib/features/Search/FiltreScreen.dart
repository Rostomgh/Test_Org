import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/CustomBottomSheet.dart';
import 'package:test_org/features/Search/Widget/BottomSheetSearch.dart';
import 'package:test_org/features/Search/Widget/CustomCSearch.dart';

class FiltreScreen extends StatefulWidget {
  const FiltreScreen({super.key});

  @override
  State<FiltreScreen> createState() => _FiltreScreenState();
}

class _FiltreScreenState extends State<FiltreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MyDraggableSheet(child: CustomCBottomSheet()));
  }
}
