import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class CustomDropdownFields extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String? value;
  final ValueChanged<String?> onChanged;

  const CustomDropdownFields({
    super.key,
    required this.hintText,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PSizes.size380,
      height: PSizes.mi4,
      padding: const EdgeInsets.all(PSizes.sm),
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(PSizes.mi6),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(PSizes.mi8),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: PSizes.mi5),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            dropdownColor: PAppColors.black400,
            borderRadius: BorderRadius.circular(PSizes.mi5),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: PAppColors.white,
              size: PSizes.mi3,
            ),
            hint: Text(
              hintText,
              style: const TextStyle(
                color: PAppColors.black400,
                fontSize: PSizes.mi9,
                fontWeight: FontWeight.w400,
              ),
            ),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    color: PAppColors.white,
                    fontSize: PSizes.mi9,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}