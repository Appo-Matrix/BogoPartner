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
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 48) / 2; // padding-aware responsive width

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔹 Counter Box
          Container(
            height: 92,
            width: itemWidth,
            decoration: BoxDecoration(
              color: PAppColors.black800,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _increment,
                  borderRadius: BorderRadius.circular(50),
                  child: const Icon(Icons.keyboard_arrow_up, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Text(
                  count.toString().padLeft(2, '0'),
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeMd,
                    weight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 16),
                InkWell(
                  onTap: _decrement,
                  borderRadius: BorderRadius.circular(50),
                  child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
              ],
            ),
          ),

          // 🔹 Buy Button
          Container(
            height: 92,
            width: itemWidth,
            decoration: BoxDecoration(
              color: widget.buttonColor,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.assetPath,
                  height: 36,
                  width: 36,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    widget.buttonText,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 18,
                      weight: FontWeight.w800,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
