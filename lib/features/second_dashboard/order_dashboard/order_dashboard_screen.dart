import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/order_dashboard/widgets/active_card.dart';
import 'package:partner_app/features/second_dashboard/order_dashboard/widgets/offer_states_card.dart';
import 'package:partner_app/features/second_dashboard/order_dashboard/widgets/order_stats_card.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class OrderDashboardScreen extends StatefulWidget {
  const OrderDashboardScreen({super.key});

  @override
  State<OrderDashboardScreen> createState() => _OrderDashboardScreenState();
}

class _OrderDashboardScreenState extends State<OrderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(
        title: "Total Orders",
        showTitle: true,
        showBackIcon: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderStatsCard(
                iconAsset: PImages.order,
                title: "Total Orders",
                value: "5.2K",
                valueLabel: "orders",
                percentageText: "10%",
                percentageColor: Colors.green,
                percentageIcon: Icons.arrow_drop_up,
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PActionCard(
                    asset: PImages.bag,
                    text: "Orders",
                    color: PAppColors.dark,
                  ),
                  PActionCard(
                    asset: PImages.locks,
                    text: "Last Orders",
                    color: PAppColors.black900,
                  ),
                ],
              ),

              SizedBox(height: 10),

              OfferStatsCard(
                offerName: "Pizza Blast",
                categoryName: "Fast Food",
                orderCount: "1.2K",
                orderLabel: "orders",
                percentageText: "10%",
                topRightPercentText: "25%",
                assetImage: PImages.pizzas,
                progressValue: 0.5,
                // 50% progress bar
                trendColor: Colors.green,
                progressColor: Colors.amber,
                trendIcon: Icons.arrow_drop_up,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
