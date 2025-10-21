import 'package:flutter/material.dart';

class PShortDottedDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double dashWidth;
  final double dashGap;
  final double totalWidth;

  const PShortDottedDivider({
    super.key,
    this.color = Colors.white54,
    this.height = 2,
    this.dashWidth = 6,
    this.dashGap = 4,
    this.totalWidth = 120,
  });

  @override
  Widget build(BuildContext context) {
    final dashCount = (totalWidth / (dashWidth + dashGap)).floor();

    return SizedBox(
      width: totalWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(dashCount, (_) {
          return SizedBox(
            width: dashWidth,
            height: height,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          );
        }),
      ),
    );
  }
}
