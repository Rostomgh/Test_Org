import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/features/Auth/Widget/CustomButton.dart';
import 'package:test_org/features/Event/Widget/CustomStackC.dart';

class EventExploreScreen extends StatefulWidget {
  const EventExploreScreen({super.key});

  @override
  State<EventExploreScreen> createState() => _EventExploreScreenState();
}

class _EventExploreScreenState extends State<EventExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Events',
          style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: AppColors.AuthC),
        ),
        elevation: 3,
      ),
      body:  Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 5,right:50 ),
            child: CustomStackC(tap: (){
              Navigator.pushNamed(context, '/Allevent');
            },),
          ),
          const SizedBox(height: 100,),
          Image.asset(Assets.exploreevent,height:300,),
          SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.only(left: 52.0,right: 52),
            child: CustomButton(
              onpress: (){},
              teB: 'Explore Events ',
            ),
          )
        ],
      ),
    );
  }
}
