import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String label;
 
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const CustomTextField({
    required this.label,
    
    this.isPassword = false,
    this.controller,
    this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30.0,bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: AppColor.darkOrange,
              fontFamily: 'Bainsley',
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            obscureText: isPassword,
            keyboardType: keyboardType,
            decoration: InputDecoration(
            
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 2.0,
                ),
              ),
              filled: true,
              fillColor: AppColor.lightOrange,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              suffixIcon: isPassword
                  ? const Icon(
                      Icons.visibility_off,
                      color: AppColor.darkOrange,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String label;
  
  final TextEditingController? controller;

  const PasswordTextField({
    required this.label,
   
    this.controller,
    super.key,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 16,
              color: AppColor.darkOrange,
              fontFamily: 'Bainsley',
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: widget.controller,
            obscureText: _isObscured,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColor.darkOrange,
                  width: 2.0,
                ),
              ),
              filled: true,
              fillColor: AppColor.lightOrange,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.darkOrange,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}