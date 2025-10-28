import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class SuggestionTextFieldWidget extends StatelessWidget {
  final VoidCallback onMinusLeft;
  final String asset;
  final String text1;
  final String text2;
  final Color color;

  const SuggestionTextFieldWidget({
    super.key,
    required this.onMinusLeft,
    required this.asset,
    required this.text1,
    required this.color,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row 1
        Row(
          children: [
            Expanded(
              child: Container(
                height: 92,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 76,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(
                          child: Image.asset(asset, height: 60, width: 60),
                        ),
                      ),
                      Spacer(),
                      CounterPill(
                        targetTap: onMinusLeft,
                        text: text1,
                        text2: text2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CounterPill extends StatelessWidget {
  final VoidCallback targetTap;
  final String text;
  final String text2;

  const CounterPill({
    super.key,
    required this.targetTap,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 264,
      decoration: BoxDecoration(

        color: PAppColors.black1000,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: 14,
                  weight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: text,
                  hintStyle: PAppStyles.poppins(
                    color: PAppColors.black500,
                    fontSize: 14,
                    weight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.zero, // optional: removes extra padding
                ),
                cursorColor: Colors.white,
              ),
            ),

            InkWell(
              onTap: targetTap,
              child: Text(
                text2,
                style: PAppStyles.poppins(
                  color: PAppColors.main,
                  fontSize: 14,
                  weight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
