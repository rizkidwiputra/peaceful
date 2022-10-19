import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'views/home.dart';
import 'views/login.dart';
import 'views/onboarding/onboarding2.dart';
import 'views/onboarding/onboarding3.dart';
import 'views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),
      ),
      // home: const SplashScreen(),
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/onboarding2': (context) => OnBoarding2(),
        '/onboarding3': (context) => OnBoarding3(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
