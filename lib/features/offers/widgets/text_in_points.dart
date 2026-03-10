import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class TextInPoints extends StatelessWidget {
  final String? mainHeading;
  final String? heading;
  final Color dotColor;
  final double fontSize;
  final String pointText1;
  final String? pointText2;
  final String? pointText3;

  const TextInPoints({
    this.mainHeading,
    this.heading,
    this.dotColor = PAppColors.white,
    this.fontSize = PSizes.fontSizeEaSm,
    required this.pointText1,
    this.pointText2,
    this.pointText3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mainHeading != null)
          Text(
            mainHeading!,
            style: PAppStyles.heading1.copyWith(color: PAppColors.white),
          ),
        if (mainHeading != null) SizedBox(height: PSizes.spaceBtwSectionsXSm),
        if (heading != null)
          Text(
            "$heading:",
            style: PAppStyles.heading1.copyWith(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
            ),
          ),
        _textInPoints(
          pointText1,
          heading == null ? 0.0 : PSizes.xl,
          heading == null ? 0.0 : PSizes.md,
          fontSize,
          dotColor,
        ),
        if (pointText2 != null)
          _textInPoints(
            pointText2!,
            heading == null ? 0.0 : PSizes.xl,
            heading == null ? 0.0 : PSizes.md,
            fontSize,
            dotColor,
          ),
        if (pointText3 != null)
          _textInPoints(
            pointText3!,
            heading == null ? 0.0 : PSizes.xl,
            heading == null ? 0.0 : PSizes.md,
            fontSize,
            dotColor,
          ),
        if (heading != null) SizedBox(height: PSizes.xl),
      ],
    );
  }
}

Widget _textInPoints(
  String pointText,
  double leftPadding,
  double topPadding,
  double fontSize,
  Color dotColor,
) => Column(
  children: [
    Padding(
      padding: EdgeInsets.only(left: leftPadding, top: topPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Align(
              alignment: AlignmentGeometry.topLeft,
              child: Text(
                "•",
                style: PAppStyles.heading2.copyWith(
                  color: dotColor,
                  fontSize: PSizes.fontSizeLgx,
                ),
              ),
            ),
          ),
          SizedBox(width: PSizes.xs),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: PSizes.xs),
              child: Text(
                pointText,
                style: PAppStyles.heading2.copyWith(
                  color: PAppColors.white,
                  height: PSizes.paragraphSpacingLgx,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ],
);
