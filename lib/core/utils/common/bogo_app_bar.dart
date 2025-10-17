import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class BogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showTitle;
  final bool showBackIcon;
  final Color backgroundColor;
  final VoidCallback? onBackPressed;

  const BogoAppBar({
    super.key,
    this.title,
    this.showTitle = true,
    this.showBackIcon = true,
    this.backgroundColor = PAppColors.black1000,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: false,
      leading: showBackIcon
          ? IconButton(
              onPressed: onBackPressed ?? () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: PAppColors.white),
            )
          : null,
      title: showTitle && title != null
          ? Text(
              title!,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeLg,
                weight: FontWeight.w900,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


// appBar: const BogoAppBar(
// title: "Settings",
// showTitle: true,
// showBackIcon: true,
// ),
//
// appBar: const BogoAppBar(
// showTitle: false,
// showBackIcon: true,
// ),
//
//
// appBar: const BogoAppBar(
// title: "Dashboard",
// showTitle: true,
// showBackIcon: false,
// ),
