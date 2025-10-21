import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/mdify_reservation/widgets/adults_count.dart';
import 'package:partner_app/features/second_dashboard/mdify_reservation/widgets/custom_textfield.dart';
import 'package:partner_app/features/second_dashboard/mdify_reservation/widgets/floating_confirm_button.dart';
import 'package:partner_app/features/second_dashboard/mdify_reservation/widgets/mini_calendar_bar.dart';
import 'package:partner_app/features/second_dashboard/mdify_reservation/widgets/time_wheel_picker.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../business_details_form/widgets/form_tile.dart';

class ModifyReservationScreen extends StatefulWidget {
  const ModifyReservationScreen({super.key});

  @override
  State<ModifyReservationScreen> createState() =>
      _ModifyReservationScreenState();
}

class _ModifyReservationScreenState extends State<ModifyReservationScreen> {
  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int buyOneCountBottom = 2;
  int discountCountBottom = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      
      // App Bar
      appBar: const BogoAppBar(
        title: "Modify",
        showTitle: true,
        showBackIcon: true,
      ),

      // Body
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  MiniCalendarBar(
                    initialDate: DateTime(2023, 1, 12),
                    onDateChanged: (d) {},
                  ),
                  const SizedBox(height: 10),
                  TimeWheelPicker(
                    initialTime: const TimeOfDay(hour: 6, minute: 30),
                    onChanged: (t) {},
                  ),
                  const SizedBox(height: 10),
                  AdultsCount(
                    title: "Adults",
                    asset: PImages.adults,
                    color: Colors.deepPurple,
                    leftCount: buyOneCountTop,
                    onMinusLeft: () => setState(() => buyOneCountTop--),
                    onPlusLeft: () => setState(() => buyOneCountTop++),
                  ),
                  const SizedBox(height: 10),
                  AdultsCount(
                    title: "Children",
                    asset: PImages.children,
                    color: PAppColors.error500,
                    leftCount: buyOneCountBottom,
                    onMinusLeft: () => setState(() => buyOneCountBottom--),
                    onPlusLeft: () => setState(() => buyOneCountBottom++),
                  ),
                  const SizedBox(height: 10),
                  FormTile(
                    leadingAsset: PImages.light,
                    label: "Reason for modification",
                    onTap: () {},
                  ),
                  const SizedBox(height: 10),
                  const CustomReasonTextField(
                    hintText:
                        "Write a letter to the client explaining the reason for the modification",
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),

          FloatingConfirmButton(
            color: PAppColors.main,
            onTap: () {
              // your confirmation logic
            },
          ),
        ],
      ),
    );
  }
}
