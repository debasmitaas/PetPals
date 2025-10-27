import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.darkOrange.withValues(alpha: 0.5),
            blurRadius: 20,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('assets/vectors/nav1.svg'),
          _buildNavItem('assets/vectors/nav2.svg'),
          _buildNavItem('assets/vectors/nav3.svg'),
          _buildNavItem('assets/vectors/nav4.svg'),
          _buildNavItem('assets/vectors/nav5.svg'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath) {
    return GestureDetector(
      onTap: () {
        // Handle navigation
      },
      child: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
    );
  }
}