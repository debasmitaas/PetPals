import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class Doctors extends StatelessWidget {
  final String doctorName;
  final String imagePath;
  final String petimagePath;
  final VoidCallback onTap;

  const Doctors({
    required this.doctorName,
    required this.imagePath,
    required this.petimagePath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(screenWidth * 0.05),
      child: Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: AppColor.lightOrange,
          borderRadius: BorderRadius.circular(screenWidth * 0.05),
          // border: Border.all(
          //   color: AppColor.darkOrange,
          //   width: 1.5,
          // ),
          boxShadow: [
            BoxShadow(
              color: AppColor.darkOrange.withValues(alpha: .5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Doctor Image - Full height, aligned left
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                 screenWidth * 0.05
          
                ),
                child: SizedBox(
                  width: screenWidth * 0.3,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Pet circle on top of doctor image
            Positioned(
              bottom: screenWidth * 0.02,
              left: screenWidth * 0.22,
              child: Container(
                width: screenWidth * 0.14,
                height: screenWidth * 0.14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .25),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    petimagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Doctor Info on the right
            Positioned(
              left: screenWidth * 0.38,
              right: screenWidth * 0.04,
              top: screenWidth * 0.04,
              bottom: screenWidth * 0.04,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        doctorName,
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontFamily: 'Bainsley',
                          fontWeight: FontWeight.w600,
                          color: AppColor.brown,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: screenHeight * 0.003),
                      Text(
                        'Veterinarian',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontFamily: 'Bainsley',
                          color: AppColor.brown.withValues(alpha: .7),
                        ),
                      ),
                    ],
                  ),
                  DeepOrangeButton(
                    onPressed: onTap,
                    title: 'Sign up',
                    height: 27,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}