import 'package:flutter/material.dart';
import 'package:test_org/FisrtScreen.dart';
import 'package:test_org/core/Router/OngenerateRoute.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      
      home: FirstScreen(),
      onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
    );
  }
}