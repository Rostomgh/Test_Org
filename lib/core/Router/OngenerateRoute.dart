import 'package:flutter/material.dart';
import 'package:test_org/LogoS.dart';
import 'package:test_org/core/Router/ErrorRouter.dart'; // Example: Import another screen

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LogoS());
      // Example: Navigate to another screen
      default:
        return MaterialPageRoute(builder: (_) => ErrorRoute());
    }
  }
}
