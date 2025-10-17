import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/order_detail/widgets/custom_offer_card.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../order_dashboard/widgets/active_card.dart';
import '../order_dashboard/widgets/order_stats_card.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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

              SizedBox(height: 15),
              PCustomOfferCard(
                mainImage: PImages.pizzas,
                offerName: "Buy 1 Get 1 Free",
                categoryName: "Fast Food",
                price: "1200 DA",
                userImage: PImages.pizzas,
                userName: "Zaki Ahmad",
                offerText: "Special Deal for You",
                text: "New Customer",
                tagColor: Colors.orangeAccent,
                date: "14",
                month: "Dec",
              ),

              SizedBox(height: 15),
              PCustomOfferCard(
                mainImage: PImages.pizzas,
                offerName: "Buy 1 Get 1 Free",
                categoryName: "Fast Food",
                price: "1200 DA",
                userImage: PImages.pizzas,
                userName: "Zaki Ahmad",
                offerText: "Special Deal for You",
                text: "New Customer",
                tagColor: PAppColors.dark,
                date: "14",
                month: "Dec",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
