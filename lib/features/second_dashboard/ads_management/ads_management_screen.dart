import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/ads_management/widgets/ads_builder_widget.dart';
import 'package:partner_app/features/second_dashboard/ads_management/widgets/ads_static_cards.dart';
import 'package:partner_app/features/second_dashboard/ads_management/widgets/manage_ads_widget.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';

class AdsManagementScreen extends StatefulWidget {
  const AdsManagementScreen({super.key});

  @override
  State<AdsManagementScreen> createState() => _AdsManagementScreenState();
}

class _AdsManagementScreenState extends State<AdsManagementScreen> {
  int selectedIndex = 0;

  Widget getSelectedWidget() {
    switch (selectedIndex) {
      case 0:
        return const AdsBuilderWidget();
      case 1:
        return const ManageAdsWidget();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: BogoAppBar(
        title: "bogo ads",
        showTitle: true,
        showBackIcon: true,
        showActions: false,
        actionText: "",
        onActionTap: () {},
        onBackPressed: () {},
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
                AdsStaticCards(
                  imagePath: PImages.ads,
                  bottomText: "Ads Builder",
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                AdsStaticCards(
                  imagePath: PImages.manage,
                  bottomText: "Manage ADS",
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
