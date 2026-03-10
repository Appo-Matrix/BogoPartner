import 'package:flutter/material.dart';

class GridViewCount2 extends StatelessWidget {
  final List<Widget> children;

  const GridViewCount2({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 0,
      mainAxisSpacing: 8,
      childAspectRatio: 6,
      children: children,
    );
  }
}
