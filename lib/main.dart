import 'package:flutter/material.dart';
import 'package:test_org/LogoS.dart';
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
      
      home:const LogoScreen(),
      onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
    );
  }
}