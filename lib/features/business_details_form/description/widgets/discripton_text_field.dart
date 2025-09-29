import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class DescriptionTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onTap;

  const DescriptionTextField({
    super.key,
    required this.controller,
    this.hintText = 'Write a description of no more than 100 words',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.all(PSizes.lg),
      child: TextField(
        controller: controller,
        maxLines: null,
        style: PAppStyles.poppins(
          color: PAppColors.white,
          fontSize: PSizes.fontSizeSm,
          weight: FontWeight.w400,
          height: 1.4,
        ),
        cursorHeight: 13,
        cursorColor: PAppColors.white,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: PAppStyles.poppins(
            color: PAppColors.black500,
            fontSize: PSizes.fontSizeSm,
            weight: FontWeight.w400,
          ),
          contentPadding: const EdgeInsets.only(
            top: 0,
            left: 0,
            right: 0,
            bottom: 30,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
