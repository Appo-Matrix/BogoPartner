import 'package:flutter/material.dart';

class AdsStaticCards extends StatelessWidget {
  final String imagePath;
  final String bottomText;
  final bool isSelected;
  final VoidCallback onTap;

  const AdsStaticCards({
    super.key,
    required this.imagePath,
    required this.bottomText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
    isSelected ? const Color(0xFF8BC255) : const Color(0xFF2B2B2B);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 92,
        width: 185,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, height: 48, width: 48),

              Text(
                bottomText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
