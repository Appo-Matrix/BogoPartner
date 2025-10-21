import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/ad_setup_card.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/ad_step_one_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/ad_step_two_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/circular_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/short_dotted_divider.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';

class AdSetupScreen extends StatefulWidget {
  const AdSetupScreen({super.key});

  @override
  State<AdSetupScreen> createState() => _AdSetupScreenState();
}

class _AdSetupScreenState extends State<AdSetupScreen> {
  int selectedIndex = 0;

  Widget getSelectedWidget() {
    switch (selectedIndex) {
      case 0:
        return const AdStepOneWidget();
      case 1:
        return const AdStepTwoWidget();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_outlined,
            color: PAppColors.white,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {},
              child: Image.asset(PImages.info, height: 33, width: 33),
            ),
          ),
        ],
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            // Cards Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdSetupCard(
                  bottomText: "Step One",
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                DoubleCircleWidget(
                  outerSize: 30,
                  innerSize: 20,
                  outerColor: PAppColors.white,
                  innerColor: PAppColors.black800,
                ),

                PShortDottedDivider(
                  color: Colors.grey,
                  height: 2,
                  dashWidth: 4,
                  dashGap: 4,
                  totalWidth: 50,
                ),

                DoubleCircleWidget(
                  outerSize: 30,
                  innerSize: 20,
                  outerColor: PAppColors.white,
                  innerColor: PAppColors.black800,
                ),

                AdSetupCard(
                  bottomText: "Step Two",
                  isSelected: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Dynamic Content
            getSelectedWidget(),
          ],
        ),
      ),
    );
  }
}
