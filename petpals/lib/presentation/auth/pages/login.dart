import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/custom_text_field.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/common/widgets/google_widget.dart';
import 'package:petpals/common/widgets/paw_prints.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/domain/usecases/auth/login.dart';
import 'package:petpals/presentation/home/pages/home_page.dart';
import 'package:petpals/service_locator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    try {
      await sl<LoginUseCase>().call(
        _emailController.text,
        _passwordController.text,
      );
      
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
  
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const PawPrints.topLeft(),
                SizedBox(height: screenHeight * 0.12),
                const Text(
                  'Log In',
                  style: TextStyle(fontSize: 30, color: AppColor.brown),
                  textAlign: TextAlign.center,
                ),
                CustomTextField(label: 'Email', controller: _emailController),
                PasswordTextField(label: 'Password', controller: _passwordController),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: 20,
                    top: 20,
                  ),
                  child: DeepOrangeButton(
                    onPressed: _login,
                    title: 'Confirm',
                    height: 51,
                  ),
                ),
                SizedBox(height: screenHeight * 0.12),
                GoogleWidget(onPressed: () {}),
                const PawPrints.bottomRight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}