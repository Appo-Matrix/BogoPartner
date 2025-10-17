import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/features/company/widgets/category_grid_selector.dart';
import 'package:partner_app/features/company/widgets/custom_dropdown.dart';
import '../../core/utils/common/widgets/app_buttons.dart';
import '../../core/utils/constants/app_assets.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';
import '../../core/utils/constants/app_styles.dart';

class AddCompanyScreen extends StatefulWidget {
  const AddCompanyScreen({super.key});

  @override
  State<AddCompanyScreen> createState() => _AddCompanyScreenState();
}

class _AddCompanyScreenState extends State<AddCompanyScreen> {
  int selectedCategory = 0;

  final List<Map<String, dynamic>> categories = [
    {"image": PImages.atheltics, "label": "Bodybuilding"},
    {"image": PImages.mma, "label": "Martial arts"},
    {"image": PImages.swimming, "label": "Water sports"},
    {"image": PImages.cycling, "label": "Outdoor sports"},
    {"image": PImages.handball, "label": "Team sports"},
    {"image": PImages.wrestling, "label": "Sports facilities"},
  ];

  // dropdown values
  String? selectedSport;
  String? selectedPrice;
  String? selectedCountry;
  String? selectedRegion;
  String? selectedDepartment;
  String? selectedAddress;

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
          "Add a company",
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
        child: Column(
          children: [
            /// Category Selector
            CategoryGridSelector(
              categories: categories,
              initialSelected: selectedCategory,
              onCategorySelected: (index) {
                setState(() => selectedCategory = index);
              },
            ),

            const SizedBox(height: PSizes.spaceBtwSections),

            /// Dropdown Section
            CustomDropdownField(
              title: "Type of sports",
              icon: Icons.sports_soccer,
              items: ["Football", "Cricket", "Basketball", "Tennis", "Hockey"],
              selectedValue: selectedSport,
              onChanged: (val) => setState(() => selectedSport = val),
            ),
            const SizedBox(height: PSizes.spaceBtwItems),

            CustomDropdownField(
              title: "Average prices",
              icon: Icons.attach_money,
              items: ["Low", "Medium", "High"],
              selectedValue: selectedPrice,
              onChanged: (val) => setState(() => selectedPrice = val),
            ),
            const SizedBox(height: PSizes.spaceBtwItems),

            CustomDropdownField(
              title: "Pays",
              icon: Icons.flag,
              items: ["Pakistan", "France", "USA"],
              selectedValue: selectedCountry,
              onChanged: (val) => setState(() => selectedCountry = val),
            ),
            const SizedBox(height: PSizes.spaceBtwItems),

            CustomDropdownField(
              title: "Region",
              icon: Icons.map,
              items: ["North", "South", "East", "West"],
              selectedValue: selectedRegion,
              onChanged: (val) => setState(() => selectedRegion = val),
            ),
            const SizedBox(height: PSizes.spaceBtwItems),

            CustomDropdownField(
              title: "Department",
              icon: Icons.location_on,
              items: ["Dept 1", "Dept 2", "Dept 3"],
              selectedValue: selectedDepartment,
              onChanged: (val) => setState(() => selectedDepartment = val),
            ),
            const SizedBox(height: PSizes.spaceBtwItems),

            CustomDropdownField(
              title: "Address",
              icon: Icons.add_location_alt,
              items: ["Address 1", "Address 2"],
              selectedValue: selectedAddress,
              onChanged: (val) => setState(() => selectedAddress = val),
            ),

            const SizedBox(height: PSizes.spaceBtwSections),
            /// Continue Button
            AppButtons.simple(
              text: 'Continue',
              borderRadius: PSizes.fontSizeUMdLg,
              onTap: () {
                context.push('/descriptionDetailScreen');

              },
            ),


          ],
        ),
      ),
    );
  }
}
