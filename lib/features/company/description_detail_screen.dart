import 'package:flutter/material.dart';
import 'package:partner_app/features/company/widgets/custom_radio_button.dart';
import 'package:partner_app/features/company/widgets/display_box.dart';
import 'package:partner_app/features/company/widgets/file_upload_card.dart';
import 'package:partner_app/features/company/widgets/map_card.dart';
import 'package:partner_app/features/company/widgets/offer_selector.dart';
import 'package:partner_app/features/company/widgets/working_hours_card.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';
import '../../core/utils/constants/app_styles.dart';

/// Dark styled TextField
Widget buildTextField(
  String hint, {
  TextEditingController? controller,
  int maxLines = 1,
  bool isReadOnly = false,
  double borderRadius = PSizes.inputFieldRadius,
  double verticalPadding = PSizes.sm,
  Color hintColor = PAppColors.black800,
}) {
  return TextField(
    controller: controller,
    maxLines: maxLines,
    readOnly: isReadOnly,
    style: PAppStyles.poppins(
      color: PAppColors.white,
      fontSize: PSizes.fontSizeSm,
      weight: FontWeight.w400,
    ),
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: PAppStyles.poppins(
        color: hintColor,
        fontSize: PSizes.fontSizeSm,
        weight: FontWeight.w400,
      ),
      filled: true,
      fillColor: PAppColors.black1000,
      contentPadding: EdgeInsets.symmetric(
        horizontal: PSizes.md,
        vertical: verticalPadding,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(color: PAppColors.black800, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 2),
      ),
    ),
  );
}

/// Main Screen
class DescriptionDetailScreen extends StatefulWidget {
  const DescriptionDetailScreen({super.key});

  @override
  State<DescriptionDetailScreen> createState() =>
      _DescriptionDetailScreenState();
}

class _DescriptionDetailScreenState extends State<DescriptionDetailScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  int buyOneGetOne = 2;
  int discount25 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: PAppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(PSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeader("Description"),
            const SizedBox(height: PSizes.spaceBtwItems),
            buildTextField(
              "Write a description of no more than 100 words",
              controller: _descriptionController,
              maxLines: 3,
            ),

            const SizedBox(height: PSizes.spaceBtwSections),

            sectionHeader("Locate your location on the map"),
            const SizedBox(height: PSizes.spaceBtwItems),
            const MapCard(),
            const SizedBox(height: PSizes.spaceBtwItems),
            Row(
              children:  [
                Expanded(
                  child: DisplayBox(
                    text: "Latitude",
                    borderRadius: 35,
                    verticalPadding: 24,
                    textColor: PAppColors.white,
                  ),
                ),
                const SizedBox(width: PSizes.spaceBtwItems),
                Expanded(
                  child: DisplayBox(
                    text: "Longitude",
                    borderRadius: 35,
                    verticalPadding: 24,
                    textColor: PAppColors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: PSizes.spaceBtwSections),

            sectionHeader("Documents"),
            const SizedBox(height: PSizes.sm),
            FileUploadCard(),

            const SizedBox(height: PSizes.spaceBtwSections),

            sectionHeader("Working hours"),
            const SizedBox(height: PSizes.sm),
            const WorkingHoursCard(),

            const SizedBox(height: PSizes.spaceBtwSections),

            sectionHeader("Do you want to register as offer?"),
            const SizedBox(height: PSizes.sm),
            CustomRadioButtonGroup(
              options: ["Yes", "No"],
              initialValue: "Yes",
              onChanged: (value) => print("Selected: $value"),
              height: PSizes.buttonHeight * 3.5, // ~70
            ),

            const SizedBox(height: PSizes.spaceBtwSections),
            sectionHeader(
              "How many offers do you want to present \nto each customer?",
            ),
            OfferSelector(
              title: "BUY ONE GET ONE",
              value: buyOneGetOne,
              onChanged: (val) => setState(() => buyOneGetOne = val),
            ),
            OfferSelector(
              title: "25% DISCOUNT",
              value: discount25,
              onChanged: (val) => setState(() => discount25 = val),
            ),

            const SizedBox(height: PSizes.spaceBtwSections),
            sectionHeader(
              "How many offers do you want to give to a \ncustomer after completing the \nloyalty program?",
            ),
            OfferSelector(
              title: "BUY ONE GET ONE",
              value: buyOneGetOne,
              onChanged: (val) => setState(() => buyOneGetOne = val),
            ),
            OfferSelector(
              title: "25% DISCOUNT",
              value: discount25,
              onChanged: (val) => setState(() => discount25 = val),
            ),

            const SizedBox(height: PSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ContinueButton(onPressed: () => print("Continue pressed")),
            ),
          ],
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ContinueButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: PAppColors.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: PSizes.lg,
          vertical: PSizes.md,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(PSizes.buttonRadius * 2),
        ),
      ),
      child: Text(
        "Continue",
        style: PAppStyles.poppins(
          color: PAppColors.white,
          fontSize: PSizes.fontSizeMd,
          weight: FontWeight.w600,
        ),
      ),
    );
  }
}

Widget sectionHeader(String title, {IconData? icon, Color? color}) {
  return Row(
    children: [
      if (icon != null) ...[
        Icon(icon, color: color ?? PAppColors.white, size: PSizes.iconMd),
        const SizedBox(width: PSizes.sm),
      ],
      Text(
        title,
        style: PAppStyles.poppins(
          color: color ?? PAppColors.white,
          fontSize: PSizes.fontSizeMd,
          weight: FontWeight.w500,
        ),
      ),
    ],
  );
}
