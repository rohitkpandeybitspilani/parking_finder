import 'package:flutter/material.dart';
import 'package:parking_finder/features/auth/screens/login_screen.dart';
import 'package:parking_finder/features/auth/screens/register_screen.dart';
import 'package:parking_finder/features/auth/screens/splash_screen.dart';
import 'package:parking_finder/features/meters/screens/meters_screen.dart';
import 'package:parking_finder/features/profile/screens/profile_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String meters = '/meters';
  static const String meterDetail = '/meter-detail';
  static const String sessions = '/sessions';
  static const String payments = '/payments';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case meters:
        return MaterialPageRoute(builder: (_) => const MetersScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
