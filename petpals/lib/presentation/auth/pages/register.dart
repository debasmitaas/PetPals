import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/custom_text_field.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/common/widgets/google_widget.dart';
import 'package:petpals/common/widgets/paw_prints.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/data/models/auth/create_user_req.dart';
import 'package:petpals/domain/usecases/auth/register.dart';
import 'package:petpals/presentation/home/pages/home_page.dart';
import 'package:petpals/service_locator.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (_passwordController.text != _repeatPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match!')),
      );
      return;
    }

    try {
      await sl<RegisterUseCase>().call(
        CreateUserReq(
          fullname: _nameController.text,
          email: _emailController.text,
          password: _passwordController.text,
        ),
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
                CustomTextField(label: 'Name', controller: _nameController),
                const SizedBox(height: 20),
                CustomTextField(label: 'Email', controller: _emailController),
                const SizedBox(height: 20),
                PasswordTextField(label: 'Password', controller: _passwordController),
                const SizedBox(height: 20),
                PasswordTextField(label: 'Repeat Password', controller: _repeatPasswordController),
                const SizedBox(height: 30),
                DeepOrangeButton(
                  onPressed: _register,
                  title: 'Confirm',
                  height: 51,
                ),
                const SizedBox(height: 30),
                GoogleWidget(onPressed: () {}),
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