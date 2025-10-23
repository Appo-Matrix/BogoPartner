import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBack;
  final String? leadingTitle;
  final bool showDrawer;
  final bool showInfo;
  final VoidCallback? onDrawer;
  final Widget? leadingWidget;
  final bool showNotification;
  final VoidCallback? onNotification;
  final VoidCallback? onInfo;
  final Widget? trailingWidget;

  const CustomAppBar({
    this.leadingTitle,
    this.showBack = false,
    this.showDrawer = false,
    this.showInfo = false,
    this.onInfo,
    this.onDrawer,
    this.leadingWidget,
    this.showNotification = false,
    this.onNotification,
    this.trailingWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (showBack)
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SizedBox(
                      height: PSizes.iconLg,
                      width: PSizes.iconLg,
                      child: Center(child: SvgPicture.asset(PImages.back)),
                    ),
                  ),
                if (showBack && leadingTitle != null)
                  SizedBox(width: PSizes.mds),
                if (leadingTitle != null)
                  Text(
                    leadingTitle!,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeMd,
                      weight: FontWeight.w500,
                    ),
                  ),
                if (showBack && showDrawer) SizedBox(width: PSizes.mds),
                if (showDrawer)
                  GestureDetector(
                    onTap: onDrawer,
                    child: SizedBox(
                      height: PSizes.iconLg,
                      width: PSizes.iconLg,
                      child: Center(child: SvgPicture.asset(PImages.drawer)),
                    ),
                  ),
                if (leadingWidget != null && showDrawer)
                  SizedBox(width: PSizes.mds),
                if (leadingWidget != null) leadingWidget!,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (showNotification)
                  GestureDetector(
                    onTap: () => onNotification,
                    child: SizedBox(
                      height: PSizes.iconLg,
                      width: PSizes.iconLg,
                      child: Center(
                        child: SvgPicture.asset(
                          PImages.notification,
                          color: PAppColors.white,
                        ),
                      ),
                    ),
                  ),
                if (showNotification && showInfo) SizedBox(width: PSizes.mds),
                if (showInfo)
                  GestureDetector(
                    onTap: () => onInfo,
                    child: SizedBox(
                      height: PSizes.iconLg,
                      width: PSizes.iconLg,
                      child: Center(child: SvgPicture.asset(PImages.info)),
                    ),
                  ),
                if (trailingWidget != null && showInfo)
                  SizedBox(width: PSizes.mds),
                if (trailingWidget != null) trailingWidget!,
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PSizes.appBarHeight);
}
