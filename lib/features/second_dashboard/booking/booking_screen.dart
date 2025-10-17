import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/booking/widgets/dashboard_states_card.dart';
import 'package:partner_app/features/second_dashboard/booking/widgets/preparation_widget.dart';
import 'package:partner_app/features/second_dashboard/booking/widgets/reservation_widget.dart';
import 'package:partner_app/features/second_dashboard/booking/widgets/upcoming_widget.dart';
import '../../../core/utils/common/bogo_app_bar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int selectedIndex = 0;

  Widget getSelectedWidget() {
    switch (selectedIndex) {
      case 0:
        return const ReservationWidget();
      case 1:
        return const UpcomingWidget();
      case 2:
        return const PreparationWidget();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      appBar: const BogoAppBar(
        title: "Reservation",
        showTitle: true,
        showBackIcon: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cards Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardStatCard(
                  imagePath: PImages.reservations,
                  numberText: "03",
                  bottomText: "Reservation",
                  isSelected: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                DashboardStatCard(
                  imagePath: PImages.upcoming,
                  numberText: "20",
                  bottomText: "Upcoming",
                  isSelected: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                DashboardStatCard(
                  imagePath: PImages.preparation,
                  numberText: "10",
                  bottomText: "Preparation",
                  isSelected: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
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
