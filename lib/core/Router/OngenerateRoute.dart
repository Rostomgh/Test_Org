import 'package:flutter/material.dart';
import 'package:test_org/core/Ui/Gmap.dart';
import 'package:test_org/core/Ui/Layout.dart';
import 'package:test_org/core/Ui/LogoS.dart';
import 'package:test_org/core/Router/ErrorRouter.dart';
import 'package:test_org/features/Auth/AuthScreen.dart';
import 'package:test_org/features/Auth/SignUpScreen.dart';
import 'package:test_org/features/Auth/VerificationScreen.dart';
import 'package:test_org/features/Event/AllEventScreen.dart';
import 'package:test_org/features/Event/EventScreen.dart';
import 'package:test_org/features/Home/HomeScreen.dart';
import 'package:test_org/features/Notification/NotificationScreen.dart';
import 'package:test_org/features/Onboarding/Onboarding.dart';
import 'package:test_org/features/Profile/My%20Profile/MyProfileScreen.dart'; // Example: Import another screen

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LogoScreen());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const OnboardingP());
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/event':
        return MaterialPageRoute(builder: (_) => const EventScreen());
      case '/layout':
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case '/verifier':
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
        case '/About':
        return MaterialPageRoute(builder: (_) => const MyProfileScreen());
        case '/Allevent':
        return MaterialPageRoute(builder: (_) => const AllEventScreen());
        case '/notif':
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
        case '/map':
        return MaterialPageRoute(builder: (_) => const GmapP());

      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
