import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class DeepOrangeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const DeepOrangeButton({
    required this.onPressed,
    required this.title,
    required this.height,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(onPressed: onPressed,
      
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight( height ?? 45),
          backgroundColor: AppColor.darkOrange,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 25,
            fontFamily: 'Bainsley', 
            fontWeight: FontWeight.w400
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
       child: Text(title)),
    );
  }
}