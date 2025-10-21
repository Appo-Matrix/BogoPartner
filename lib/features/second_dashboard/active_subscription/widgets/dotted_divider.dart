import 'package:flutter/material.dart';

class PDottedDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double dashWidth;
  final double dashGap;

  const PDottedDivider({
    super.key,
    this.color = Colors.white54,
    this.height = 2,
    this.dashWidth = 8,
    this.dashGap = 5,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashCount = (boxWidth / (dashWidth + dashGap)).floor();

        return Row(
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
        );
      },
    );
  }
}
