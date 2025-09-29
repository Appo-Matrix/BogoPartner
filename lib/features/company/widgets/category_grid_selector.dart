import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class CategoryGridSelector extends StatefulWidget {
  final List<Map<String, dynamic>> categories;
  final int initialSelected;
  final Function(int) onCategorySelected;

  const CategoryGridSelector({
    super.key,
    required this.categories,
    this.initialSelected = 0,
    required this.onCategorySelected,
  });

  @override
  State<CategoryGridSelector> createState() => _CategoryGridSelectorState();
}

class _CategoryGridSelectorState extends State<CategoryGridSelector> {
  late int selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: PSizes.gridViewSpacing,
        mainAxisSpacing: PSizes.gridViewSpacing,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final category = widget.categories[index];
        final bool isSelected = selectedCategory == index;

        return GestureDetector(
          onTap: () {
            setState(() => selectedCategory = index);
            widget.onCategorySelected(index);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: PSizes.imageThumbSize,
                width: PSizes.imageThumbSize,
                decoration: BoxDecoration(
                  color: isSelected
                      ? PAppColors.primary500.withOpacity(0.15)
                      : PAppColors.darkSurface,
                  borderRadius: BorderRadius.circular(PSizes.cardRadiusLg),
                  border: Border.all(
                    color: isSelected
                        ? PAppColors.primary500
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.all(PSizes.sm),
                child: Image.asset(
                  category["image"],
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: PSizes.xs),
              Text(
                category["label"],
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeSm,
                  weight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: PSizes.xs),
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off,
                color: isSelected
                    ? PAppColors.primary500
                    : PAppColors.gray400,
                size: PSizes.iconSm,
              ),
            ],
          ),
        );
      },
    );
  }
}
