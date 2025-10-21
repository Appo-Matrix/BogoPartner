import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class DoubleCircleWidget extends StatelessWidget {
  final double outerSize;
  final double innerSize;
  final Color outerColor;
  final Color innerColor;

  const DoubleCircleWidget({
    super.key,
    this.outerSize = 35,
    this.innerSize = 25,
    this.outerColor = PAppColors.white,
    this.innerColor = PAppColors.black800,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: outerSize,
      width: outerSize,
      decoration: BoxDecoration(
        color: outerColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: innerSize,
          width: innerSize,
          decoration: BoxDecoration(
            color: innerColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
