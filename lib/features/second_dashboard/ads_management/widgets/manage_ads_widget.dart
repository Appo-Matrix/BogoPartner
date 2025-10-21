import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'add_card_widget.dart';

class ManageAdsWidget extends StatefulWidget {
  const ManageAdsWidget({super.key});

  @override
  State<ManageAdsWidget> createState() => _ManageAdsWidgetState();
}

class _ManageAdsWidgetState extends State<ManageAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdCardWidget(
          storeName: "Nike Store",
          adTitle: "Homepage Banner",
          dateRange: "FROM 01/09/2025 TO 15/09/2025",
          price: "120000 DA",
          upperText1: "150",
          lowerText1: "New Customers",
          upperText2: "500",
          lowerText2: "Clicks",
          upperText3: "10",
          lowerText3: "Likes",
          upperText4: "3K",
          lowerText4: "Views",
          upperText5: "1.5\$",
          lowerText5: "Cost",
          timerText: "3 D : 3 H : 33 M",
          statusText: "Active",
          imageAsset: PImages.store,
        )
      ],
    );
  }
}
