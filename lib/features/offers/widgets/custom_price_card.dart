import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';


import '../../../core/utils/constants/app_sizes.dart';

class CustomPriceCard extends StatelessWidget {
  final String title;
  final String hintText;
  final String currency;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomPriceCard({
    super.key,
    this.title = "Price",
    this.hintText = "00.00",
    this.currency = "DA",
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PSizes.size380,
      height: PSizes.mi4,
      decoration: BoxDecoration(
        color: PAppColors.darkGray780,
        borderRadius: BorderRadius.circular(PSizes.mi6),
      ),
      padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
      child: Row(
        children: [
          // 🔸 Left Icon Box
          Container(
            width: PSizes.mi2,
            height: PSizes.mi2,
            decoration: BoxDecoration(
              color: PAppColors.yellow1,
              borderRadius: BorderRadius.circular(28),
            ),
            child:
               Image.asset(
                "assets/images/price.png",
                width: PSizes.iconSm,
                height: PSizes.iconSm,
              ),
            ),


          const SizedBox(width: PSizes.md),

          // 🔸 Title Text
          Text(
            title,
            style: const TextStyle(
              color: PAppColors.white,
              fontSize: PSizes.md,
              fontWeight: FontWeight.w500,
            ),
          ),

          const Spacer(),

          // 🔸 Price Input Field
          SizedBox(
            width: PSizes.mi10,
            height: PSizes.fontSizeUL - 2,
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: PSizes.md,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: PAppColors.black400,
                  fontSize: PSizes.md,
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
                fillColor: PAppColors.darkGray760,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: PSizes.iconXs,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(PSizes.iconXs),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          const SizedBox(width: PSizes.sm),

          // 🔸 Currency Label
          Text(
            currency,
            style: const TextStyle(
              color: PAppColors.black400,
              fontSize: PSizes.md,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
