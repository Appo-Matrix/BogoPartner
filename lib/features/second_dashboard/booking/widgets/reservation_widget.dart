import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import '../../active_subscription/widgets/dotted_divider.dart';
import 'action_button_card.dart';
import 'custom_date_row.dart';
import 'custom_hotel_card.dart';
import 'custom_message_title.dart';
import 'info_state_tile.dart';

class ReservationWidget extends StatefulWidget {
  const ReservationWidget({super.key});

  @override
  State<ReservationWidget> createState() => _ReservationWidgetState();
}

class _ReservationWidgetState extends State<ReservationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            color: PAppColors.black900,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),

              CustomHotelCard(
                asset: PImages.image,
                title: "Hotel Name",
                subtitle: "Budget Double Room",
                price: "1000 DA",
              ),

              SizedBox(height: 15),
              CustomMessageTile(
                asset: PImages.image,
                title: "AZIR DESATURATES",
                subtitle:
                    "I ask you to prepare an extra bed for my young child",
              ),

              SizedBox(height: 15),

              // Divider
              PDottedDivider(
                color: PAppColors.black800,
                height: 3,
                dashWidth: 12,
                dashGap: 10,
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoStatTile(
                      title: "Adults",
                      numberText: "01",
                      assetPath: PImages.adults,
                      assetBackgroundColor: Colors.deepPurple,
                    ),
                    InfoStatTile(
                      title: "Children",
                      numberText: "01",
                      assetPath: PImages.children,
                      assetBackgroundColor: PAppColors.error500,
                    ),
                    InfoStatTile(
                      title: "Rooms",
                      numberText: "01",
                      assetPath: PImages.rooms,
                      assetBackgroundColor: PAppColors.warning50,
                    ),
                  ],
                ),
              ),

              Spacer(),
              CustomDateRow(
                leftAsset: PImages.date,
                leftText: "18/06/2023",
                dividerAsset: PImages.vertical,
                rightAsset: PImages.date,
                rightText: "25/06/2023",
              ),
            ],
          ),
        ),
        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButtonCard(
              text: "Modify",
              backgroundColor: PAppColors.black800,
              onTap: () {
                context.go("/modifyReservationScreen");
              },
            ),
            ActionButtonCard(
              text: "Reject",
              backgroundColor: PAppColors.error700,
              onTap: () {
                // your action here
              },
            ),
            ActionButtonCard(
              text: "Accept",
              backgroundColor: PAppColors.dark,
              onTap: () {
                // your action here
              },
            ),
          ],
        ),
      ],
    );
  }
}
