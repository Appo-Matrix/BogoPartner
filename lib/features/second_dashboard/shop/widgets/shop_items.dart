import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class ShopItems extends StatefulWidget {
  final String buttonText;
  final String assetPath;
  final Color buttonColor;

  const ShopItems({
    super.key,
    this.buttonText = "Buy",
    required this.assetPath,
    this.buttonColor = Colors.amber,
  });

  @override
  State<ShopItems> createState() => _ShopItemsState();
}

class _ShopItemsState extends State<ShopItems> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      if (count > 0) count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 92,
              width: 185,
              decoration: BoxDecoration(
                color: PAppColors.black800,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: _increment,
                    child: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    count.toString().padLeft(2, '0'),
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeMd,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: _decrement,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 92,
              width: 185,
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 28),
                  Image.asset(widget.assetPath, height: 40, width: 40),
                  const SizedBox(width: 15),
                  Text(
                    widget.buttonText,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 20,
                      weight: FontWeight.w900,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
