import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';


class CustomDropdownField extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> items;
  final String? selectedValue;
  final Function(String?) onChanged;

  const CustomDropdownField({
    super.key,
    required this.title,
    required this.icon,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: PAppColors.darkSurface,
        borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      ),
      padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        dropdownColor: PAppColors.darkSurface,
        icon: const Icon(Icons.keyboard_arrow_down, color: PAppColors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
          ),
          icon: Icon(icon, color: PAppColors.white),
        ),
        hint: Text(
          title,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeMd,
            weight: FontWeight.w400,
          ),
        ),
        items: items.map((e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(
              e,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeSm,
                weight: FontWeight.w400,
              ),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
