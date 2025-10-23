import 'package:flutter/material.dart';

import '../../../core/utils/common/widgets/app_buttons.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_strings.dart';

class AddButtonContainer extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  final Color color;
  final double borderRadius;

  const AddButtonContainer({
    super.key,
    required this.buttonTitle,
    required this.onTap,
    this.color = PAppColors.black800,
    this.borderRadius = PSizes.borderRadiusXLg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: PSizes.buttonHeightLg,
        width: PSizes.size380,
        decoration: BoxDecoration(
          color: color.withOpacity(0.65),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.square(
              imageIcon: Icons.add,
              buttonColor: PAppColors.white,
              iconColor: color,
              text: buttonTitle,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
