import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8.0) ,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.darkOrange, width: 2),
        
      ),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/user.png'),
        
      ),
    );
  }
}