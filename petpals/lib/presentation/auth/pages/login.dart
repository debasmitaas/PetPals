import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/custom_text_field.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/common/widgets/google_widget.dart';
import 'package:petpals/common/widgets/paw_prints.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/presentation/home/pages/home_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
  
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const PawPrints.topLeft(),
              SizedBox(height: screenHeight * 0.12),
              _loginText(),
              const CustomTextField(label: 'Phone Number'),
              const PasswordTextField(label: 'Password'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 20,
                  top: 20,
                ),
                child: DeepOrangeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage(),
                      ),
                    );
                  },
                  title: 'Confirm',
                  height: 51,
                ),
              ),
                         SizedBox(height: screenHeight * 0.12),
          
              GoogleWidget(onPressed: (){}),
              const PawPrints.bottomRight(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _loginText() {
  return const Text(
    'Log In',
    style: TextStyle(fontSize: 30, color: AppColor.brown),
    textAlign: TextAlign.center,
  );
}
