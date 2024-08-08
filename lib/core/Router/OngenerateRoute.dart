import 'package:flutter/material.dart';
import 'package:test_org/FirstScreen.dart'; // Ensure this import is correct
import 'package:test_org/FisrtScreen.dart';
import 'package:test_org/SecondScreen.dart';
import 'package:test_org/core/Router/ErrorRouter.dart'; // Example: Import another screen

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstScreen());
      // Example: Navigate to another screen
      default:
        return MaterialPageRoute(builder: (_) => ErrorRoute());
    }
  }
}
