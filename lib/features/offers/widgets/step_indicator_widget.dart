import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

import '../../../core/utils/constants/app_colors.dart' show PAppColors;

class StepIndicatorWidget extends StatelessWidget {
  final String currentStep;
  final String nextStep;
  final Color secondStepColor;

  const StepIndicatorWidget({
    required this.currentStep,
    required this.nextStep,
    this.secondStepColor = PAppColors.black800,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _stepContainer(currentStep, PAppColors.medium),
          SizedBox(width: PSizes.spaceBtwItems),
          _circularContainer(),
          Text(
            "  - - - - -  ",
            style: PAppStyles.heading2.copyWith(color: PAppColors.white),
          ),
          _circularContainer(),
          SizedBox(width: PSizes.spaceBtwItems),
          _stepContainer(nextStep, secondStepColor),
        ],
      ),
    );
  }
}

Widget _stepContainer(String stepNo, Color containerColor) => Container(
  height: PSizes.buttonWidths,
  width: PSizes.buttonWidthXSm,
  decoration: BoxDecoration(
    color: containerColor,
    borderRadius: BorderRadius.circular(PSizes.borderRadiusXLg),
  ),
  child: Center(
    child: Text(
      "step $stepNo",
      style: PAppStyles.poppins(
        color: PAppColors.white,
        fontSize: PSizes.fontSizeESm,
        weight: FontWeight.w500,
      ),
    ),
  ),
);

Widget _circularContainer() => Container(
  height: PSizes.iconSm,
  width: PSizes.iconSm,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.white, width: 2),
    borderRadius: BorderRadius.circular(PSizes.borderRadiusMd),
  ),
);
