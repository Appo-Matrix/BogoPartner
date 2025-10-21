import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class ComplaintTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final VoidCallback? onTap;

  const ComplaintTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
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
        border: Border.all(color: PAppColors.black800, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          Text(
            title,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeSm,
              weight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),

          // Text Field
          TextField(
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
              isDense: true,
              contentPadding: EdgeInsets.zero,
              hintText: hintText,
              hintStyle: PAppStyles.poppins(
                color: PAppColors.white.withOpacity(0.4),
                fontSize: PSizes.fontSizeSm,
                weight: FontWeight.w400,
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
