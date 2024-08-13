import 'package:flutter/material.dart';

import 'package:test_org/core/Router/OngenerateRoute.dart';
import 'package:test_org/features/Notification/NotificationScreen.dart';

import 'package:test_org/features/Notification/Widget/CustomNotifiacationError.dart';

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
      
      home:const NotificationScreen(),
      onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
    );
  }
}