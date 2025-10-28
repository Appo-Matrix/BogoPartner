import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/picture_slector_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/target_widget.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../modify_reservation/widgets/mini_calendar_bar.dart';
import 'duration_count.dart';
import 'location_widget.dart';

class AdStepTwoWidget extends StatefulWidget {
  const AdStepTwoWidget({super.key});

  @override
  State<AdStepTwoWidget> createState() => _AdStepTwoWidgetState();
}

class _AdStepTwoWidgetState extends State<AdStepTwoWidget> {
  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int buyOneCountBottom = 2;
  int discountCountBottom = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MiniCalendarBar(
          initialDate: DateTime(2023, 1, 12),
          onDateChanged: (d) {},
        ),

        const SizedBox(height: 10),
        PictureSelectorWidget(
          imageAsset: PImages.pizzaKing,
          rightAsset: PImages.gallary,
          rightText: "New Picture",
        ),

        const SizedBox(height: 10),
        DurationCount(
          title: "Duration days",
          subTitle: "Months",
          asset: PImages.duration,
          color: Colors.lightGreen,
          leftCount: buyOneCountTop,
          onMinusLeft: () => setState(() => buyOneCountTop--),
          onPlusLeft: () => setState(() => buyOneCountTop++),
        ),

        const SizedBox(height: 10),
        TargetWidget(
          title: "Target",
          subTitle: "All the clients",
          asset: PImages.target,
          color: Colors.amber,
          onMinusLeft: () {},
        ),

        const SizedBox(height: 10),
        LocationWidget(
          title: "Province",
          asset: PImages.location,
          color: Colors.deepPurpleAccent,
          onMinusLeft: () {},
        ),

        const SizedBox(height: 10),
        LocationWidget(
          title: "City",
          asset: PImages.location,
          color: Colors.deepPurpleAccent,
          onMinusLeft: () {},
        ),
      ],
    );
  }
}
