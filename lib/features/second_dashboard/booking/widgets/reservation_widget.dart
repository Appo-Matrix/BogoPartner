import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import '../../active_subscription/widgets/dotted_divider.dart';
import 'action_button_card.dart';
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

              Container(
                height: 92,
                width: 353,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                          color: PAppColors.black1000,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(child: Image.asset(PImages.image)),
                      ),

                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hotel Name",
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 20,
                              weight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10),

                          Text(
                            "Budget Double Room",
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 15,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "1000 DA",
                            style: PAppStyles.poppins(
                              color: PAppColors.dark,
                              fontSize: 20,
                              weight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: PAppColors.black1000,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(child: Image.asset(PImages.image)),
                    ),
                    Spacer(),
                    Container(
                      height: 67,
                      width: 287,
                      decoration: BoxDecoration(
                        color: PAppColors.black1000,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AZIR DESATURATES",
                              style: PAppStyles.poppins(
                                color: PAppColors.white,
                                fontSize: 18,
                                weight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "I ask you to prepare an extra bed for my young child",
                              style: PAppStyles.poppins(
                                color: PAppColors.white,
                                fontSize: 13,
                                weight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
              Container(
                height: 68,
                width: 384,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: PAppColors.black700,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Image.asset(
                            PImages.date,
                            height: 20,
                            width: 19,
                          ),
                        ),
                      ),

                      SizedBox(width: 10),
                      Text(
                        "18/06/2023",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 16,
                          weight: FontWeight.w400,
                        ),
                      ),

                      Spacer(),

                      Image.asset(PImages.vertical),
                      Spacer(),

                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: PAppColors.black700,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Image.asset(
                            PImages.date,
                            height: 20,
                            width: 19,
                          ),
                        ),
                      ),

                      SizedBox(width: 10),
                      Text(
                        "18/06/2023",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 16,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
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
                // your action here
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
