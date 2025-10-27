import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petpals/core/config/assets/app_vectors.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class GoogleWidget extends StatelessWidget {
  final VoidCallback onPressed;
  
  const GoogleWidget({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Divider with text
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: AppColor.darkOrange,
                thickness: 1.5,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Continue through',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.brown,
                  fontFamily: 'Bainsley',
                ),
              ),
            ),
            const Expanded(
              child: Divider(
                color: AppColor.darkOrange,
                thickness: 1.5,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Google button
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 226,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.darkOrange,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppVectors.google,
                height: 38.42,
              ),
            ),
          ),
        ),
      ],
    );
  }
}