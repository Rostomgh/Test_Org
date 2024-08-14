import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Event/Widget/AllEvent.dart';

class AllEventScreen extends StatefulWidget {
  const AllEventScreen({super.key});

  @override
  State<AllEventScreen> createState() => _AllEventScreenState();
}

class _AllEventScreenState extends State<AllEventScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left:0.0),
            child: Text(
              'Events',
              style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.AuthC),
            ),
          ),
          elevation: 3,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 30,)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
          ],
        ),
      body: const SingleChildScrollView( 
        child:Padding(
          padding: EdgeInsets.only(left: 24.0,top: 10),
          child: AllEvent(),
        )
      )
    );
  }
}