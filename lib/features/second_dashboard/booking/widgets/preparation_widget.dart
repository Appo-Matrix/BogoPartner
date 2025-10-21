import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

import '../../../../core/utils/constants/app_assets.dart';
import 'custom_toggle_switch.dart';

class PreparationWidget extends StatefulWidget {
  const PreparationWidget({super.key});

  @override
  State<PreparationWidget> createState() => _PreparationWidgetState();
}

class _PreparationWidgetState extends State<PreparationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92,
          width: double.infinity,
          decoration: BoxDecoration(
            color: PAppColors.black900,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 78,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Color(0xFF94ACD0),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Center(child: Image.asset(PImages.frees)),
                ),

                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Freezing the\nreservation",
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 16,
                        weight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),

                Spacer(),

                CustomToggleSwitch(
                  initialValue: false,
                  onChanged: (value) {
                    print("Switch state changed: $value");
                  },
                ),

              ],
            ),
          ),
        ),
        Text(
          "The hotel will not appear until you reboot to normal mode",
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: 16,
            weight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
