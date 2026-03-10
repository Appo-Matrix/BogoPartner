import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import '../../constants/app_sizes.dart';
import '../../constants/p_text.dart';

class AppBarWidgets extends StatelessWidget {
  final VoidCallback? onMenuTap;
  final VoidCallback? onNotificationTap;
  final String title;
  const AppBarWidgets({
    super.key, this.onMenuTap, this.onNotificationTap, this.title = "Offers",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Positioned(
          top: 53,
          left: 24,
          child: SizedBox(
            width: PSizes.mi6,
            height: PSizes.mi8,
            child: Transform.rotate(
              angle: -3.1416, // -180 degrees in radians
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: onMenuTap,
                icon: Icon(
                  Icons.menu,
                  color: PAppColors.white,
                  size: PSizes.mi8,
                ),
              ),
            ),
          ),
        ),
        PText(title,color: PAppColors.white,fontSize: 24,fontWeight: FontWeight.w700),
        Positioned(
          top: 53,
          left: 366,
          child: SizedBox(
            width: PSizes.mi3,
            height:PSizes.iconLg,
            child: IconButton(
              padding: EdgeInsets.zero, // removes default padding
              constraints: const BoxConstraints(), // allows exact sizing
              onPressed: onNotificationTap,
              icon: Icon(
                Icons.notification_important,
                color: PAppColors.white,
                size: PSizes.mi3, // match width for better scaling
              ),
            ),
          ),
        )

      ],
    );
  }
}
