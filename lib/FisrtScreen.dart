import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text("Helloo Fisrt ",style: TextStyle(fontSize: 30),)),
    );
  }
}
