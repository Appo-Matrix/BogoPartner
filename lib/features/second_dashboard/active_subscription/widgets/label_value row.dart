import 'package:flutter/material.dart';

class PLabelValueRow extends StatelessWidget {
  final String label;   // left side text
  final String value;   // right side text
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double horizontalPadding;

  const PLabelValueRow({
    super.key,
    required this.label,
    required this.value,
    this.color = Colors.white,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
    this.horizontalPadding = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
