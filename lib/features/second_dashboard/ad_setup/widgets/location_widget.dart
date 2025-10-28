import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class LocationWidget extends StatelessWidget {
  final VoidCallback onMinusLeft;
  final String asset;
  final String title;
  final Color color;

  const LocationWidget({
    super.key,
    required this.onMinusLeft,
    required this.asset,
    required this.title,
    required this.color,
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
                width: double.infinity,
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
                        width: 76,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(
                          child: Image.asset(asset, height: 44, width: 44),
                        ),
                      ),
                      const SizedBox(width: 15),

                      // Text custom
                      Text(
                        title,
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 16,
                          weight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      CounterPill(onTap: onMinusLeft),
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
  final VoidCallback onTap;

  const CounterPill({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
