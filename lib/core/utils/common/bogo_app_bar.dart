import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../../../../core/utils/constants/app_assets.dart';

class BogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showTitle;
  final bool showBackIcon;
  final bool showActions;
  final String? actionText;
  final VoidCallback? onActionTap;
  final Color backgroundColor;
  final VoidCallback? onBackPressed;

  const BogoAppBar({
    super.key,
    this.title,
    this.showTitle = true,
    this.showBackIcon = true,
    this.showActions = false,
    this.actionText,
    this.onActionTap,
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

      actions: showActions
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  height: 31,
                  width: 117,
                  decoration: BoxDecoration(
                    color: PAppColors.black900,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(PImages.archives, height: 19, width: 19),
                      InkWell(
                        onTap: onActionTap ?? () {},
                        child: Text(
                          actionText ?? "Action",
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: 16,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
