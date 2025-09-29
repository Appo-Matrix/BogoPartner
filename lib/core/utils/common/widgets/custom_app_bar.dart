import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBack;

  const CustomAppBar({this.showBack = false, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: Row(
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
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PSizes.appBarHeight);
}
