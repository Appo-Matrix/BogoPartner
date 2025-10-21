import 'package:flutter/material.dart';

class FloatingConfirmButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final IconData icon;

  const FloatingConfirmButton({
    super.key,
    required this.onTap,
    this.color = const Color(0xFF8BC255),
    this.icon = Icons.check,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          height: 95,
          width: 96,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
