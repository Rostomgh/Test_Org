import 'package:flutter/material.dart';
import 'package:test_org/LogoS.dart';
import 'package:test_org/core/Router/ErrorRouter.dart';
import 'package:test_org/features/Auth/AuthScreen.dart';
import 'package:test_org/features/Auth/SignUpScreen.dart';
import 'package:test_org/features/Onboarding/Onboarding.dart'; // Example: Import another screen

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>const LogoScreen());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) =>const OnboardingP());
        case '/auth':
        return MaterialPageRoute(builder: (_) => AuthScreen());
        case '/signup':
        return MaterialPageRoute(builder: (_) =>const SignUpScreen());

      default:
        return MaterialPageRoute(builder: (_) =>const ErrorRoute());
    }
  }
}
