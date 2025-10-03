import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:pinput/pinput.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';

class OtpInputField extends StatelessWidget {
  final TextEditingController controller;

  const OtpInputField({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      controller: controller,
      defaultPinTheme: PinTheme(
        height: PSizes.buttonHeight,
        width: PSizes.buttonHeight,
        textStyle: PAppStyles.poppins(
          color: PAppColors.white,
          fontSize: PSizes.fontSizeLgx,
          weight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          color: PAppColors.darkGray750,
          borderRadius: BorderRadius.circular(PSizes.buttonRadius),
        ),
      ),
    );
  }
}
