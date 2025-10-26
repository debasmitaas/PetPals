import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class LightOrangeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const LightOrangeButton({
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
          backgroundColor: AppColor.lightOrange,
          foregroundColor:AppColor.darkOrange,
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'Bainsley', 
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: AppColor.darkOrange,
              width: 2,
          ))),
       child: Text(title)),
    );
  }
}