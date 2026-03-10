import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class NextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: PSizes.spaceBtwSectionsSm,
          height: PSizes.spaceBtwSectionsSm,
          decoration: const BoxDecoration(
            color: PAppColors.main,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(PSizes.mi6),
              bottomRight: Radius.circular(PSizes.mi6),
            ),
          ),
          child: const Center(
            child: Icon(Icons.arrow_forward, color: PAppColors.white, size: PSizes.iconLg),
          ),
        ),
      ),
    );
  }
}