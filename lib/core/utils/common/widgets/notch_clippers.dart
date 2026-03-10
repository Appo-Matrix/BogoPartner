import 'package:flutter/material.dart';

class ChatNotchedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 5);
    path.lineTo(size.width / 12, size.height / 5);
    path.lineTo(size.width / 8, 0);
    path.lineTo(size.width / 6, size.height / 5);
    path.lineTo(size.width, size.height / 5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}