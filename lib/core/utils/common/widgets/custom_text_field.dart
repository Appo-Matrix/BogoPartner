import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final dynamic prefixIcon;
  final String obscureCharacter;
  final bool isPassword;
  final bool obscureText;

  const CustomTextField({
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.isPassword = false,
    this.obscureText = false,
    this.obscureCharacter = '•',
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.sm),
      child: SizedBox(
        height: PSizes.textFieldHeight,
        width: PSizes.textFieldWidth,
        child: Center(
          child: TextFormField(
            expands: !obscureText ? true : false,
            minLines: null,
            maxLines: !obscureText ? null : 1,
            obscureText: widget.isPassword
                ? true
                : (obscureText ? true : false),
            obscuringCharacter: widget.obscureCharacter,
            controller: widget.controller,
            style: PAppStyles.body.copyWith(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
            ),
            cursorColor: PAppColors.white,
            cursorHeight: PSizes.cursorHeight,
            cursorWidth: PSizes.cursorWidth,
            decoration: InputDecoration(
              filled: true,
              fillColor: PAppColors.darkGray750,
              prefixIcon: widget.prefixIcon == null
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: PSizes.xs),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PSizes.lg,
                      ),
                      child: SizedBox(
                        height: PSizes.iconLg,
                        width: PSizes.iconLg,
                        child: Center(
                          child: widget.prefixIcon is IconData
                              ? Icon(widget.prefixIcon)
                              : SvgPicture.asset(
                                  widget.prefixIcon,
                                  color: PAppColors.white,
                                ),
                        ),
                      ),
                    ),
              suffixIcon: widget.obscureText
                  ? Padding(
                      padding: const EdgeInsets.all(PSizes.lg),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: SizedBox(
                          height: PSizes.iconLg,
                          width: PSizes.iconLg,
                          child: Center(
                            child: SvgPicture.asset(
                              PImages.obscureIcon,
                              color: PAppColors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  : null,
              hintText: widget.hintText,
              hintStyle: PAppStyles.body.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeSm,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: PAppColors.lightGray500),
                borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: PAppColors.lightGray500,
                  width: PSizes.xs / PSizes.sm,
                ),
                borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
