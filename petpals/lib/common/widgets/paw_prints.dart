import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petpals/core/config/assets/app_vectors.dart';

class PawPrints extends StatelessWidget {
  final Alignment alignment;
  final String assetPath;
  final double? width;
  final double? height;

  const PawPrints({
    required this.alignment,
    required this.assetPath,
    this.width = 60,
    this.height = 60,
    super.key,
  });

  const PawPrints.topLeft({
    this.width = 60,
    this.height = 60,
    super.key,
  })  : alignment = Alignment.centerLeft,
        assetPath = AppVectors.upperleft;

  const PawPrints.bottomRight({
    this.width = 60,
    this.height = 60,
    super.key,
  })  : alignment = Alignment.centerRight,
        assetPath = AppVectors.lowerright;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(
        assetPath,
        width: width,
        height: height,
      ),
    );
  }
}