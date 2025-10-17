import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class BogoNavItem {
  final String asset;
  final String? selectedAsset;
  final String label;

  const BogoNavItem({
    required this.asset,
    this.selectedAsset,
    required this.label,
  });
}

class BogoBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;
  final List<BogoNavItem> items;
  final double barHeight;
  final double? barWidth;
  final double cornerRadius;
  final double indicatorDiameter;
  final double indicatorOverlap;
  final double notchRadiusExtra;
  final double topGap;
  final Color barColor;
  final Color indicatorColor;
  final Color selectedColor;
  final Color unselectedColor;

  const BogoBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
    required this.items,
    this.barHeight = 92,
    this.barWidth = 394,
    this.cornerRadius = 46,
    this.indicatorDiameter = 60,
    this.indicatorOverlap = 26,
    this.notchRadiusExtra = 8,
    this.topGap = 22,
    this.barColor = PAppColors.black1000,
    this.indicatorColor = PAppColors.primary,
    this.selectedColor = PAppColors.white,
    this.unselectedColor = PAppColors.lightGray400,
  }) : assert(items.length >= 2);

  @override
  Widget build(BuildContext context) {
    final double r = indicatorDiameter / 2;
    final double indicatorTop = topGap - (indicatorDiameter - indicatorOverlap);
    final double notchR = r + notchRadiusExtra;

    return SafeArea(
      top: false,
      child: SizedBox(
        height: barHeight + topGap + 8,
        child: Center(
          child: SizedBox(
            width: barWidth,
            child: LayoutBuilder(
              builder: (context, c) {
                final double w = c.maxWidth;
                final int count = items.length;
                final double step = w / count;
                final double targetCenterX = (currentIndex + 0.5) * step;

                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      top: topGap,
                      child: TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 260),
                        curve: Curves.easeInOut,
                        tween: Tween<double>(
                          begin: 0.5 * step,
                          end: targetCenterX,
                        ),
                        builder: (context, notchCenterX, _) {
                          return CustomPaint(
                            painter: _BogoBarPainter(
                              barColor: barColor,
                              borderRadius: cornerRadius,
                              notchCenterX: notchCenterX,
                              notchRadius: notchR,
                            ),
                          );
                        },
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 260),
                      curve: Curves.easeInOut,
                      top: indicatorTop,
                      left: targetCenterX - r,
                      child: Container(
                        width: indicatorDiameter,
                        height: indicatorDiameter,
                        decoration: BoxDecoration(
                          color: indicatorColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            items[currentIndex].selectedAsset ?? items[currentIndex].asset,
                            width: PSizes.iconMd,
                            height: PSizes.iconMd,
                            color: PAppColors.white,
                            colorBlendMode: BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: topGap,
                      child: Row(
                        children: List.generate(count, (i) {
                          final bool selected = i == currentIndex;
                          return Expanded(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () => onItemSelected(i),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 180),
                                    switchInCurve: Curves.easeOut,
                                    switchOutCurve: Curves.easeIn,
                                    child: selected
                                        ? SizedBox(
                                      height: PSizes.iconMd,
                                      width: PSizes.iconMd,
                                    )
                                        : Image.asset(
                                      items[i].asset,
                                      width: PSizes.iconMd,
                                      height: PSizes.iconMd,
                                      color: unselectedColor,
                                      colorBlendMode: BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    items[i].label,
                                    style: selected
                                        ? PAppStyles.poppins(
                                      color: selectedColor,
                                      fontSize: PSizes.fontSizeMd,
                                      weight: FontWeight.bold,
                                    )
                                        : PAppStyles.poppins(
                                      color: unselectedColor,
                                      fontSize: PSizes.fontSizeMd,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _BogoBarPainter extends CustomPainter {
  final Color barColor;
  final double borderRadius;
  final double notchCenterX;
  final double notchRadius;

  _BogoBarPainter({
    required this.barColor,
    required this.borderRadius,
    required this.notchCenterX,
    required this.notchRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final RRect rrect = RRect.fromLTRBR(
      0,
      0,
      size.width,
      size.height,
      Radius.circular(borderRadius),
    );
    final Path bg = Path()..addRRect(rrect);
    final Path notch = Path()
      ..addOval(
        Rect.fromCircle(center: Offset(notchCenterX, 0), radius: notchRadius),
      );
    final Path finalPath = Path.combine(PathOperation.difference, bg, notch);
    final Paint p = Paint()..color = barColor;
    canvas.drawPath(finalPath, p);
  }

  @override
  bool shouldRepaint(covariant _BogoBarPainter old) =>
      notchCenterX != old.notchCenterX ||
          notchRadius != old.notchRadius ||
          barColor != old.barColor ||
          borderRadius != old.borderRadius;
}
