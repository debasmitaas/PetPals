import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class Events extends StatelessWidget {
  final String timeText;
  final String eventText;
  final String imagePath;
  final VoidCallback onTap;

  const Events({
    required this.timeText,
    required this.eventText,
    required this.imagePath,
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
        height: screenHeight * 0.15,
        width: screenWidth * 0.9,
        padding: EdgeInsets.all(screenWidth * 0.04),
        decoration: BoxDecoration(
          color: AppColor.lightOrange,
          borderRadius: BorderRadius.circular(screenWidth * 0.05),
          boxShadow: [
            BoxShadow(
              color: AppColor.darkOrange.withValues(alpha: .5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _timeText(screenWidth),
                  DeepOrangeButton(
                    onPressed: onTap,
                    title: 'Review',
                    height: 35,
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.03),
            Image.asset(
              imagePath,
              width: screenWidth * 0.25,
              height: screenHeight * 0.25,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Widget _timeText(double screenWidth) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$timeText ',
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              fontFamily: 'Bainsley',
              fontWeight: FontWeight.bold,
              color: AppColor.darkOrange,
            ),
          ),
          TextSpan(
            text: eventText,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              fontFamily: 'Bainsley',
              fontWeight: FontWeight.w500,
              color: AppColor.brown,
            ),
          ),
        ],
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}