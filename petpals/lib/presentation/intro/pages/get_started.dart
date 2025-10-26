import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/common/widgets/light_orange_button.dart';
import 'package:petpals/common/widgets/paw_prints.dart';
import 'package:petpals/core/config/assets/app_vectors.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/presentation/auth/pages/login.dart';
import 'package:petpals/presentation/auth/pages/register.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final logoWidth = screenWidth - 48;
    final logoHeight = logoWidth * 1.18;

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Spacer(),
              const PawPrints.topLeft(),
              const SizedBox(height: 20),
              SizedBox(
                width: logoWidth,
                height: logoHeight,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AppVectors.p2logo,
                      width: logoWidth,
                      height: logoHeight,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: logoHeight * 0.55,
                      left: logoWidth * 0.08,
                      right: logoWidth * 0.08,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: logoWidth * 0.065,
                            color: Colors.white,
                            height: 1.7,
                            fontFamily: 'Bainsley',
                          ),
                          children: const [
                            TextSpan(text: 'Welcome to '),
                            TextSpan(
                              text: 'Petpals',
                              style: TextStyle(
                                color: AppColor.brown,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' – your one-stop solution for keeping your furry friends healthy and happy!',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 3),
              DeepOrangeButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Register(),
                    ),
                  );
                },
                title: 'Register',
                height: 51,
              ),
              const SizedBox(height: 16),
              LightOrangeButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Login(),
                    ),
                  );
                },
                title: 'Login',
                height: 51,
              ),
              const SizedBox(height: 30),
              const PawPrints.bottomRight(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
