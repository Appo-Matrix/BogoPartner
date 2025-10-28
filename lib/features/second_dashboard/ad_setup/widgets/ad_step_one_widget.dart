import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/location_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/suggestion_text_field_widget.dart';
import 'package:partner_app/features/second_dashboard/ad_setup/widgets/target_widget.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../modify_reservation/widgets/mini_calendar_bar.dart';
import 'duration_count.dart';

class AdStepOneWidget extends StatefulWidget {
  const AdStepOneWidget({super.key});

  @override
  State<AdStepOneWidget> createState() => _AdStepOneWidgetState();
}

class _AdStepOneWidgetState extends State<AdStepOneWidget> {
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
        DurationCount(
          title: "Duration",
          subTitle: "Months",
          asset: PImages.duration,
          color: PAppColors.main,
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
        SuggestionTextFieldWidget(
          text1: "Enter Keyword",
          text2: "Suggestion",
          asset: PImages.suggestion,
          color: Colors.red,
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
