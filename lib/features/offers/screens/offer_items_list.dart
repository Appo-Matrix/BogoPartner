import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_styles.dart';
import '../../../core/utils/constants/p_text.dart';

/// =================================================
/// MODEL
/// =================================================
class OfferItems {
  final String preTime;
  final String price;
  final String leadingImage;
  final String title;
  final String subtitle;
  final String description;
  final String time;
  final VoidCallback onGroup;
  final VoidCallback onFamilies;
  final VoidCallback onChildren;
  final VoidCallback onMore;
  final VoidCallback onNext;
  final VoidCallback? onTap;

  const OfferItems({
    required this.preTime,
    required this.price,
    required this.leadingImage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.time,
    required this.onGroup,
    required this.onFamilies,
    required this.onChildren,
    required this.onMore,
    required this.onNext,
    this.onTap,
  });
}

/// =================================================
/// OFFER ITEM LIST
/// =================================================
class OfferItemsList extends StatelessWidget {
  final List<OfferItems> items;

  const OfferItemsList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => OfferCardWidget(offerItems: item)).toList(),
    );
  }
}

/// =================================================
/// OFFER CARD
/// =================================================
class OfferCardWidget extends StatelessWidget {
  final OfferItems offerItems;

  const OfferCardWidget({required this.offerItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: offerItems.onTap,
        borderRadius: BorderRadius.circular(35),
        child: SizedBox(
          height: 203,
          width: 392,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// RIGHT SIDE - WHITE SIDE
              Align(
                alignment: Alignment.centerRight,
                child: FractionallySizedBox(
                  widthFactor: 0.6,
                  child: ClipPath(
                    clipper: SingleHorizontalNotchedClipper(),
                    child: Container(
                      height: 203,
                      decoration: BoxDecoration(
                        color: PAppColors.backGroundColor,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: AppButtons(
                              buttonText: "More",
                              height: 17,
                              width: 49,
                              textColor: PAppColors.backGroundColor,
                              buttonColor: PAppColors.white,
                              fontSize: 12,
                              borderRadius: 9,
                              onTap: offerItems.onMore,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            offerItems.time,
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 42,
                              weight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Minutes",
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 14,
                              weight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: offerItems.onNext,
                            icon: Icon(
                              Icons.arrow_forward,
                              color: PAppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              /// LEFT SIDE - DARK SIDE
              FractionallySizedBox(
                widthFactor: 0.78,
                child: ClipPath(
                  clipper: DoubleVerticalNotchedClipper(),
                  child: Container(
                    height: 203,
                    decoration: BoxDecoration(
                      color: PAppColors.black800,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// PRICE
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 20),
                            child: Text(
                              '${offerItems.price} DA',
                              style: _textStyle(20, FontWeight.w700),
                            ),
                          ),
                        ),

                        /// TITLE + IMAGE
                        ListTile(
                          leading: Container(
                            height: 62,
                            width: 62,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(offerItems.leadingImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(
                            offerItems.title,
                            style: _textStyle(18, FontWeight.w500),
                          ),
                          subtitle: Text(
                            offerItems.subtitle,
                            style: _textStyle(10, FontWeight.w400),
                          ),
                        ),

                        Center(
                          child: PText(
                            offerItems.preTime,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        /// DESCRIPTION
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          child: Text(
                            offerItems.description,
                            style: _textStyle(11, FontWeight.w400),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const Spacer(),

                        /// BUTTONS ROW
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OfferCategoryButton(
                                label: "Men",
                                imagePath: '',
                                onTap: offerItems.onGroup,
                              ),
                              OfferCategoryButton(
                                label: "Women",
                                imagePath: '',
                                onTap: offerItems.onFamilies,
                              ),
                              OfferCategoryButton(
                                label: "Children",
                                imagePath: PImages.children,
                                onTap: offerItems.onChildren,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// =================================================
/// CATEGORY BUTTON (custom extracted version of _button)
/// =================================================
class OfferCategoryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final String imagePath;

  const OfferCategoryButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 76,
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: PAppColors.black600,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 16,
                width: 16,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 4),
              Flexible(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// =================================================
/// TEXT STYLE HELPER
/// =================================================
TextStyle _textStyle(double size, FontWeight weight) {
  return PAppStyles.poppins(
    color: PAppColors.white,
    fontSize: size,
    weight: weight,
  );
}

/// =================================================
/// CLIPPERS (unchanged)
/// =================================================
class DoubleVerticalNotchedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 5, 0);
    path.quadraticBezierTo(
      size.width / 3.7,
      size.height / 7.8,
      size.width / 3,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 3, size.height);
    path.quadraticBezierTo(
      size.width / 3.7,
      size.height / 1.1,
      size.width / 5,
      size.height,
    );
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class SingleHorizontalNotchedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 2.5);
    path.quadraticBezierTo(
      size.width / 1.15,
      size.height / 2,
      size.width,
      size.height / 1.6,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

/// =================================================
/// APP BUTTONS (unchanged)
/// =================================================
class AppButtons extends StatefulWidget {
  final dynamic imageIcon;
  final Function() onTap;
  final double? borderRadius;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final String? buttonText;

  const AppButtons({
    required this.onTap,
    this.imageIcon,
    required this.buttonText,
    this.buttonColor = PAppColors.black1000,
    this.height = 92,
    this.textColor = PAppColors.white,
    this.borderRadius = 35,
    this.width = double.infinity,
    this.fontSize = 18,
    super.key,
  });

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(widget.borderRadius!),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.imageIcon != null)
                SizedBox(
                  height: 21,
                  child: Center(
                    child: widget.imageIcon is IconData
                        ? Icon(
                            widget.imageIcon,
                            color: isSelected
                                ? PAppColors.warning50
                                : PAppColors.white,
                          )
                        : SvgPicture.asset(
                            widget.imageIcon,
                            color: isSelected
                                ? PAppColors.warning50
                                : PAppColors.white,
                          ),
                  ),
                ),
              const SizedBox(width: 5),
              Text(
                widget.buttonText!,
                style: PAppStyles.poppins(
                  color: widget.textColor!,
                  fontSize: widget.fontSize!,
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
