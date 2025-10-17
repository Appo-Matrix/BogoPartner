import 'dart:ui';
import 'package:flutter/material.dart';

class DottedContainer extends StatelessWidget {
  final Widget child;

  const DottedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 402,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: CustomPaint(
        painter: _DottedBorderPainter(),
        child: ClipRRect(borderRadius: BorderRadius.circular(24), child: child),
      ),
    );
  }
}

class _DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = 24;
    Paint paint = Paint()
      ..color = Colors.grey.shade600
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    Path path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          Radius.circular(radius),
        ),
      );

    // Draw dotted border
    double dashWidth = 8;
    double dashSpace = 7;
    double distance = 0;

    PathMetrics metrics = path.computeMetrics();
    for (PathMetric metric in metrics) {
      while (distance < metric.length) {
        canvas.drawPath(
          metric.extractPath(distance, distance + dashWidth),
          paint,
        );
        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
