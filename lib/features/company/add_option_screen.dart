import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';
import '../../core/utils/constants/app_styles.dart';

class AddOptionScreen extends StatefulWidget {
  const AddOptionScreen({super.key});

  @override
  State<AddOptionScreen> createState() => _AddOptionScreenState();
}

class _AddOptionScreenState extends State<AddOptionScreen> {
  final List<String> options = [
    "Gym",
    "Fitness Area",
    "Relaxation Area",
    "Healthy Café",
    "Professional Trainers",
    "Motivational Programs",
    "Health Assessments",
    "Sports Gear Store",
    "Changing rooms",
    "Swimming pool",
    "Indoor Sports Court",
    "Outdoor Sports Field",
    "Ice Bath Facility",
    "Group Sports Area",
    "Sound and Lighting System",
    "Massage Services",
    "Sports Equipment",
    "Sauna",
  ];

  /// Store selected options
  final Set<String> selectedOptions = {};

  void toggleOption(String title) {
    setState(() {
      if (selectedOptions.contains(title)) {
        selectedOptions.remove(title); // cancel selection
      } else {
        selectedOptions.add(title); // add selection
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.darkBackground,
      appBar: AppBar(
        backgroundColor: PAppColors.darkBackground,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: PAppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Add Option",
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeLg,
            weight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(PSizes.md),
        child: Wrap(
          spacing: PSizes.spaceBtwItems,
          runSpacing: PSizes.spaceBtwItems,
          children: options
              .map(
                (title) => CustomOptionTile(
              title: title,
              isSelected: selectedOptions.contains(title),
              onTap: () => toggleOption(title),
              width: (MediaQuery.of(context).size.width -
                  (PSizes.md * 2 + PSizes.spaceBtwItems)) /
                  2, // 2 per row with spacing
              height: PSizes.buttonHeight * 3.5, // ~62
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}

class CustomOptionTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  final double width;
  final double height;
  final double borderRadius;

  const CustomOptionTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.width = PSizes.buttonWidth,
    this.height = PSizes.buttonHeight * 3.5, // 62px approx
    this.borderRadius = PSizes.borderRadiusLg * 2, // 24px
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
      decoration: BoxDecoration(
        color: PAppColors.darkSurface,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeSm,
                weight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: PSizes.iconLg, // 32
              height: PSizes.iconLg,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? PAppColors.error500 // ❌ cancel = red
                    : PAppColors.primary500, // ➕ add = green
              ),
              child: Icon(
                isSelected ? Icons.close : Icons.add,
                size: PSizes.iconSm, // 16
                color: PAppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
