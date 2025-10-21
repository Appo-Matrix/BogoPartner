import 'package:flutter/material.dart';

class StaticStarRating extends StatelessWidget {
  final int rating;
  final int totalStars;
  final double size;
  final String filledStarAsset;
  final String emptyStarAsset;

  const StaticStarRating({
    super.key,
    required this.rating,
    this.totalStars = 5,
    this.size = 16,
    required this.filledStarAsset,
    required this.emptyStarAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalStars, (index) {
        bool isFilled = index < rating;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Image.asset(
            isFilled ? filledStarAsset : emptyStarAsset,
            height: size,
            width: size,
            color: const Color(0xFFFFD700),
          ),
        );
      }),
    );
  }
}
