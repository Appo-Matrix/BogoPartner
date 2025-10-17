import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class PCodeInputField extends StatefulWidget {
  final String label;
  final String codeText;
  final Color backgroundColor;

  const PCodeInputField({
    super.key,
    this.label = "Your code",
    this.codeText = "ABX4C9ZP",
    this.backgroundColor = PAppColors.black900,
  });

  @override
  State<PCodeInputField> createState() => _PCodeInputFieldState();
}

class _PCodeInputFieldState extends State<PCodeInputField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 236,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(
              widget.label,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeLg,
                weight: FontWeight.normal,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                _isVisible ? widget.codeText : '••••••••',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
            ),
            const SizedBox(width: 12),
            InkWell(
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Icon(
                _isVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
