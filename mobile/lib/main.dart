import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:parking_finder/core/theme/app_theme.dart';
import 'package:parking_finder/routes/app_router.dart';

void main() {
  runApp(const ParkingFinderApp());
}

class ParkingFinderApp extends StatelessWidget {
  const ParkingFinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Authentication Provider
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        // Parking Meter Provider
        ChangeNotifierProvider(create: (_) => MeterProvider()),
        // Session Provider
        ChangeNotifierProvider(create: (_) => SessionProvider()),
        // Payment Provider
        ChangeNotifierProvider(create: (_) => PaymentProvider()),
      ],
      child: MaterialApp(
        title: 'Parking Finder',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRouter.splash,
      ),
    );
  }
}

// Placeholder Provider classes for future implementation
class AuthProvider extends ChangeNotifier {}

class MeterProvider extends ChangeNotifier {}

class SessionProvider extends ChangeNotifier {}

class PaymentProvider extends ChangeNotifier {}
