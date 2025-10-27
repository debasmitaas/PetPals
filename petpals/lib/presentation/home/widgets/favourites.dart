import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class Favourites extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const Favourites({
    required this.imagePath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(screenWidth * 0.15),
      child: Container(
        width: screenWidth * 0.22,
        height: screenWidth * 0.22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.lightOrange,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class FavouritesList extends StatelessWidget {
  final List<String> imagePaths;

  const FavouritesList({
    required this.imagePaths,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenWidth * 0.22,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length + 1,
        separatorBuilder: (context, index) => SizedBox(width: screenWidth * 0.03),
        itemBuilder: (context, index) {
          if (index == imagePaths.length) {
            return _addButton(context, screenWidth);
          }
          return Favourites(
            imagePath: imagePaths[index],
            onTap: () {},
          );
        },
      ),
    );
  }

  Widget _addButton(BuildContext context, double screenWidth) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(screenWidth * 0.15),
      child: Container(
        width: screenWidth * 0.22,
        height: screenWidth * 0.22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.lightOrange,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Icon(
          Icons.add,
          color: AppColor.darkOrange,
          size: screenWidth * 0.08,
        ),
      ),
    );
  }
}