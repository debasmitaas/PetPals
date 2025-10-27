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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(onPressed: onPressed,
        
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight( height ?? 25),
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
         child: Text(title)
      ),
    );
  }
}