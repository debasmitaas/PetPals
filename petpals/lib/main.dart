import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_theme.dart';
import 'package:petpals/firebase_options.dart';
import 'package:petpals/presentation/splash/pages/splash.dart';
import 'package:petpals/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();  // ADD THIS LINE FIRST!
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}