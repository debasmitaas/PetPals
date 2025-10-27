import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/custom_text_field.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/common/widgets/google_widget.dart';
import 'package:petpals/common/widgets/paw_prints.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/presentation/home/pages/home_page.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const PawPrints.topLeft(),
                const SizedBox(height: 30),
                const Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColor.brown,
                    fontFamily: 'Bainsley',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const CustomTextField(label: 'Name'),
                const SizedBox(height: 20),
                const CustomTextField(label: 'Phone Number'),
                const SizedBox(height: 20),
                const PasswordTextField(label: 'Password'),
                const SizedBox(height: 20),
                const PasswordTextField(label: 'Repeat Password'),
                const SizedBox(height: 30),
                DeepOrangeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  title: 'Confirm',
                  height: 51,
                ),
                const SizedBox(height: 30),
                GoogleWidget(onPressed: () {}),
                // const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerRight,
                  child: PawPrints.bottomRight(),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}