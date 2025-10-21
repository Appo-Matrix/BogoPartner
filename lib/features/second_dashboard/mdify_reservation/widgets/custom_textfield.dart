import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class CustomReasonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  const CustomReasonTextField({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: PAppColors.black800, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: TextField(
          controller: controller,
          maxLines: 10,
          minLines: 1,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: 16,
            weight: FontWeight.w500,
            height: 1.2,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,

            hintText: hintText,
            hintStyle: PAppStyles.poppins(
              color: Colors.white54,
              fontSize: 16,
              weight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
