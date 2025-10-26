import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petpals/core/config/assets/app_vectors.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    redirect();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 65.23),
              child: SvgPicture.asset(
                AppVectors.logoupper,
                width: 269,
                height: 372,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SvgPicture.asset(AppVectors.logolower),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 5));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => const GetStarted())
      );
    }
  }
}