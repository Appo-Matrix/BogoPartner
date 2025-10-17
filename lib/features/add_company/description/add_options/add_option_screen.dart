import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class AddOptionScreen extends StatefulWidget {
  const AddOptionScreen({super.key});

  @override
  State<AddOptionScreen> createState() => _AddOptionScreenState();
}

class _AddOptionScreenState extends State<AddOptionScreen> {
  final List<String> _options = const [
    'Restaurant',
    'Parking',
    'Sauna',
    'Garden',
    'Terrace',
    'Shower',
    'Free WiFi',
    'Water park',
    'Beach',
    'Swimming pool',
    'View',
    'pets',
    'Heating',
    'Flat-screen TV',
    'Dining area',
    '24-hour front desk',
    'Jacuzzi',
    'Bar',
  ];

  final Set<String> _selected = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: Stack(
          children: [
            // Main scrollable content
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: PSizes.lg),

                  // Back button
                  Row(
                    children: [
                      InkWell(
                        onTap: () => context.push("/descriptionScreenTwo"),
                        child: Icon(
                          Icons.arrow_back,
                          color: PAppColors.white,
                          size: PSizes.iconLg,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: PSizes.md),

                  // Title
                  Text(
                    'Add Option',
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeLgx,
                      weight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: PSizes.spaceBtwSections),

                  // Options grid inside scroll
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final double itemWidth =
                          (constraints.maxWidth - PSizes.md) / 2;

                      return Wrap(
                        spacing: PSizes.md,
                        runSpacing: PSizes.md,
                        children: _options.map((label) {
                          final bool isSelected = _selected.contains(label);
                          return Container(
                            width: itemWidth,
                            height: 62,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? PAppColors.orange
                                  : PAppColors.black900,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: PSizes.md,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    label,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: PAppStyles.poppins(
                                      color: PAppColors.white,
                                      fontSize: PSizes.fontSizeMd,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (isSelected) {
                                        _selected.remove(label);
                                      } else {
                                        _selected.add(label);
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? PAppColors.white
                                          : PAppColors.main,
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      isSelected ? Icons.close : Icons.add,
                                      size: 18,
                                      color: isSelected
                                          ? PAppColors.black900
                                          : PAppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),

                  const SizedBox(height: PSizes.spaceBtwSections * 2),
                ],
              ),
            ),

            // Top-right green corner with check
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 88,
                width: 108,
                decoration: BoxDecoration(
                  color: PAppColors.main,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                  ),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      context.push("/paymentScreen");
                    },
                    child: Icon(
                      Icons.check,
                      color: PAppColors.white,
                      size: PSizes.iconLg,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
