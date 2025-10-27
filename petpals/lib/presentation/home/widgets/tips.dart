import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class Tips extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onTap;

  const Tips({
    required this.text,
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
      borderRadius: BorderRadius.circular(screenWidth * 0.025),
      child: Container(
        width: screenWidth * 0.38,
        height: screenHeight * 0.18,
        padding: EdgeInsets.all(screenWidth * 0.02),
        decoration: BoxDecoration(
          color: AppColor.lightOrange,
          borderRadius: BorderRadius.circular(screenWidth * 0.038),
          border: Border.all(
            color: AppColor.darkOrange,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColor.brown,
                fontSize: screenWidth * 0.046,
                fontFamily: 'Bainsley',
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
                child: Image.asset(
                  imagePath,
                  width: screenWidth * 0.20,
                  height: screenWidth * 0.20,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TipsHorizontalList extends StatelessWidget {
  final List<Tips> tips;

  const TipsHorizontalList({
    required this.tips,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tips.length,
        separatorBuilder: (context, index) => const SizedBox(width: 22),
        itemBuilder: (context, index) => tips[index],
      ),
    );
  }
}