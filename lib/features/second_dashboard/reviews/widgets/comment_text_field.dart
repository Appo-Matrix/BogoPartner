import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class CommentInputField extends StatelessWidget {
  final String hintText;
  final VoidCallback onSend;
  final TextEditingController? controller;
  final String sendIconAsset;

  const CommentInputField({
    super.key,
    required this.hintText,
    required this.onSend,
    required this.sendIconAsset,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: 1,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: PAppStyles.poppins(
                  color: Colors.white54,
                  fontSize: 16,
                  weight: FontWeight.w500,
                ),
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),

          InkWell(
            onTap: onSend,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: PAppColors.black1000,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Center(
                child: Image.asset(
                  sendIconAsset, // your arrow icon asset
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
