import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/common/Primary_button.dart';
import '../../core/utils/common/select_category_card.dart';
import '../../core/utils/constants/app_assets.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';
import '../../core/utils/constants/app_styles.dart';
import '../business_details_form/widgets/form_tile.dart';

class AddCompanyScreen extends StatefulWidget {
  const AddCompanyScreen({super.key});

  @override
  State<AddCompanyScreen> createState() => _AddCompanyScreenState();
}

class _AddCompanyScreenState extends State<AddCompanyScreen> {
  int _selectedIndex = -1;

  final categories = <({String asset, String label})>[
    (asset: PImages.restaurants, label: 'restaurants'),
    (asset: PImages.fastFood, label: 'Fast food'),
    (asset: PImages.pizza, label: 'pizza'),
    (asset: PImages.icecream, label: 'Icecream'),
    (asset: PImages.coffee, label: 'Coffee shop'),
    (asset: PImages.donut, label: 'Patisserie'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            context.push("/businessDetailsFormScreen");
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: PAppColors.white,
            size: PSizes.iconLg,
          ),
        ),
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: PSizes.md),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Add a company',
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeLgx,
                    weight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: PSizes.md),

              // Top type selector (3 cards)
              Wrap(
                spacing: PSizes.spaceBtwItems,
                runSpacing: PSizes.spaceBtwItems,
                alignment: WrapAlignment.start,
                children: List.generate(categories.length, (i) {
                  final c = categories[i];
                  return SizedBox(
                    width:
                        (MediaQuery.of(context).size.width -
                            (PSizes.md * 2) -
                            (PSizes.spaceBtwItems * 2)) /
                        3,
                    child: SelectCategoryCard(
                      asset: c.asset,
                      label: c.label,
                      selected: _selectedIndex == i,
                      onTap: () => setState(() => _selectedIndex = i),
                    ),
                  );
                }),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Form Tiles
              FormTile(
                leadingAsset: PImages.booking,
                label: "Booking type",
                onTap: () {},
              ),

              const SizedBox(height: PSizes.md),
              FormTile(
                leadingAsset: PImages.prices,
                label: "Average prices",
                onTap: () {},
              ),
              const SizedBox(height: PSizes.md),
              FormTile(leadingAsset: PImages.pays, label: "Pays", onTap: () {}),
              const SizedBox(height: PSizes.md),
              FormTile(
                leadingAsset: PImages.region,
                label: "Region",
                onTap: () {},
              ),
              const SizedBox(height: PSizes.md),
              FormTile(
                leadingAsset: PImages.department,
                label: "Department",
                onTap: () {},
              ),
              const SizedBox(height: PSizes.md),
              Container(
                height: 92,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      Icons.unfold_more_rounded,
                      color: PAppColors.white,
                      size: PSizes.iconMd,
                    ),
                    const SizedBox(width: PSizes.md),
                    Expanded(
                      child: Text(
                        'Address',
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.fontSizeMd,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              //  Continue Button
              PrimaryButton(
                text: "Continue",
                width: double.infinity,
                height: 92,
                onTap: () {
                  context.go("/descriptionScreenTwo");
                },
              ),

              const SizedBox(height: PSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
