import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_strings.dart';
import '../../../core/utils/constants/app_styles.dart';

class ImageTextListTile extends StatelessWidget {
  final String leadingImage;
  final String text;
  final String trailingImage;

  const ImageTextListTile({
    required this.leadingImage,
    super.key,
    required this.text,
    required this.trailingImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.xs),
      child: Container(
        height: PSizes.textFieldHeight,
        width: PSizes.textFieldWidth,
        decoration: BoxDecoration(
          color: PAppColors.black800,
          borderRadius: BorderRadius.circular(PSizes.buttonRadius),
        ),
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(leadingImage),
            title: Text(
              text,
              style: TextStyle(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                fontWeight: FontWeight.w500,
                fontFamily: AppFontFamilies.inter,
              ),
            ),
            trailing: SvgPicture.asset(trailingImage),
          ),
        ),
      ),
    );
  }
}
