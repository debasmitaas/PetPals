import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_theme.dart';
import 'package:petpals/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: SplashPage(),
    );
  }
}
