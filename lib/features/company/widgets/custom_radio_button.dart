import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class CustomRadioButtonGroup extends StatefulWidget {
  final List<String> options;
  final Function(String) onChanged;
  final String initialValue;
  final double height;

  const CustomRadioButtonGroup({
    super.key,
    required this.options,
    required this.onChanged,
    required this.initialValue,
    this.height = PSizes.buttonHeight, // default height from design system
  });

  @override
  State<CustomRadioButtonGroup> createState() => _CustomRadioButtonGroupState();
}

class _CustomRadioButtonGroupState extends State<CustomRadioButtonGroup> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.options.map((option) {
        final bool isSelected = selectedValue == option;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() => selectedValue = option);
              widget.onChanged(option);
            },
            child: Container(
              height: widget.height,
              margin: const EdgeInsets.symmetric(horizontal: PSizes.xs),
              padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
              decoration: BoxDecoration(
                color: PAppColors.darkSurface,
                borderRadius: BorderRadius.circular(PSizes.buttonRadius),
                border: Border.all(
                  color: isSelected
                      ? PAppColors.primary500
                      : Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: isSelected
                        ? PAppColors.primary500
                        : PAppColors.gray400,
                    size: PSizes.iconMd,
                  ),
                  const SizedBox(width: PSizes.sm),
                  Text(
                    option,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeSm,
                      weight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
