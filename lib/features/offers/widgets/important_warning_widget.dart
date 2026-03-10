import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_strings.dart';
import '../../../core/utils/constants/app_styles.dart';

class ImportantWarningWidget extends StatelessWidget {
  final String description1;
  final String? description2;

  const ImportantWarningWidget({
    super.key,
    required this.description1,
    this.description2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(PImages.imp, height: PSizes.lg, width: PSizes.lg),
            SizedBox(width: PSizes.sm),
            Text(
              AppStrings.impWarning,
              style: PAppStyles.heading1.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
              ),
            ),
          ],
        ),
        SizedBox(height: PSizes.md),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            description1,
            style: PAppStyles.body.copyWith(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeEaSm,
              height: PSizes.paragraphSpacingLg,
            ),
          ),
        ),
        if (description2 != null) SizedBox(height: PSizes.xl),
        if (description2 != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description2!,
              style: PAppStyles.body.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeEaSm,
                height: PSizes.paragraphSpacingLg,
              ),
            ),
          ),
      ],
    );
  }
}
