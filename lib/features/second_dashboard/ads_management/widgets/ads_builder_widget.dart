import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'add_promotion_card.dart';

class AdsBuilderWidget extends StatefulWidget {
  const AdsBuilderWidget({super.key});

  @override
  State<AdsBuilderWidget> createState() => _AdsBuilderWidgetState();
}

class _AdsBuilderWidgetState extends State<AdsBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdPromotionCard(
          imagePath: PImages.homePage,
          title: "Create Top Homepage Ad",
          subtitle: "Homepage Ad",
          priceText: "3000 DA/day",
          onTap: () {},
        ),
      ],
    );
  }
}
