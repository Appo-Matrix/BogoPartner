import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class WorkingDayRow extends StatelessWidget {
  final String day;
  final bool enabled;
  final String openText;   // e.g. "Open", "09:00"
  final String closeText;  // e.g. "close", "18:00"
  final VoidCallback onToggleDay;
  final VoidCallback onTapOpen;
  final VoidCallback onTapClose;

  const WorkingDayRow({
    super.key,
    required this.day,
    required this.enabled,
    required this.openText,
    required this.closeText,
    required this.onToggleDay,
    required this.onTapOpen,
    required this.onTapClose,
  });

  @override
  Widget build(BuildContext context) {
    final radiusPill = BorderRadius.circular(20);

    Widget pill(String text, VoidCallback onTap) {
      return Material(
        color: PAppColors.black400,
        borderRadius: radiusPill,
        child: InkWell(
          onTap: onTap, borderRadius: radiusPill,
          child: Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
            decoration: BoxDecoration(borderRadius: radiusPill),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: PAppStyles.poppins(
                    color: PAppColors.white.withOpacity(.85),
                    fontSize: PSizes.fontSizeSm,
                    weight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: PSizes.sm),
                Icon(Icons.keyboard_arrow_down_rounded,
                    color: PAppColors.white, size: PSizes.iconMd),
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.sm),
      child: Row(
        children: [
          // Checkbox
          InkWell(
            onTap: onToggleDay,
            borderRadius: BorderRadius.circular(14),
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: enabled ? PAppColors.success : PAppColors.black700,
                  width: 2,
                ),
              ),
              alignment: Alignment.center,
              child: enabled
                  ? Icon(Icons.check, size: 20, color: PAppColors.success)
                  : null,
            ),
          ),

          const SizedBox(width: PSizes.md),

          // Day label
          Expanded(
            child: Text(
              day,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                weight: FontWeight.w700,
              ),
            ),
          ),

          // Time pills
          pill(openText, onTapOpen),
          const SizedBox(width: PSizes.md),
          pill(closeText, onTapClose),
        ],
      ),
    );
  }
}
