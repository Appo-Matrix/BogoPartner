import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import '../../constants/app_colors.dart';

enum Button { simple, switchButton, square, radioSquare }

class AppButtons extends StatefulWidget {
  final Button type;
  VoidCallback? onTap;
  final String text;
  final dynamic imageIcon;
  String? selectedValue;
  final ValueChanged? onChanged;
  final double borderRadius;
  final bool isOutlined;
  final Color buttonColor;
  final Color? iconColor;

  AppButtons.simple({
    required this.text,
    required this.onTap,
    this.borderRadius = PSizes.buttonRadius,
    this.isOutlined = false,
    this.buttonColor = PAppColors.backGroundColor,
    super.key,
  }) : type = Button.simple,
       iconColor = null,
       onChanged = null,
       selectedValue = '',
       imageIcon = '';

  AppButtons.square({
    required this.imageIcon,
    this.buttonColor = PAppColors.black800,
    this.iconColor = PAppColors.white,
    required this.text,
    required this.onTap,
    super.key,
  }) : type = Button.square,
       isOutlined = false,
       onChanged = null,
       selectedValue = '',
       borderRadius = PSizes.borderRadiusXLg;

  AppButtons.radioSquare({
    required this.imageIcon,
    required this.onChanged,
    required this.text,
    required this.selectedValue,
    super.key,
  }) : type = Button.radioSquare,
       buttonColor = PAppColors.black800,
       isOutlined = false,
       iconColor = null,
       onTap = null,
       borderRadius = PSizes.borderRadiusXLg;

  AppButtons.switchButton({
    required this.onTap,
    this.buttonColor = PAppColors.backGroundColor,
    super.key,
  }) : type = Button.switchButton,
       borderRadius = 0,
       selectedValue = '',
       onChanged = null,
       iconColor = null,
       text = '',
       imageIcon = '',
       isOutlined = false;

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case Button.simple:
        return _simpleButton(context);
      case Button.switchButton:
        return _switchButton(context);
      case Button.square:
        return _square(context);
      case Button.radioSquare:
        return _radioSquare(context);
    }
  }

  Widget _simpleButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.sm),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: PSizes.buttonHeight,
          width: PSizes.buttonWidth,
          decoration: BoxDecoration(
            color: widget.isOutlined ? PAppColors.black800 : widget.buttonColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: PAppStyles.heading2.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeLg,
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isOn = false;

  Widget _switchButton(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (value) {
        setState(() {
          value = _isOn = !_isOn;
          widget.onTap;
        });
      },
      activeColor: PAppColors.white,
      activeThumbColor: PAppColors.backGroundColor,
      inactiveThumbColor: PAppColors.white,
      trackOutlineWidth: MaterialStateProperty.all(1),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Widget _square(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            widget.onTap;
          },
          child: Container(
            height: PSizes.imageThumbSize,
            width: PSizes.imageThumbSize,
            decoration: BoxDecoration(
              color: widget.buttonColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            child: Center(
              child: SizedBox(
                height: PSizes.iconMd,
                width: PSizes.iconMd,
                child: Center(
                  child: widget.imageIcon is IconData
                      ? Icon(widget.imageIcon, color: widget.iconColor)
                      : SvgPicture.asset(
                          widget.imageIcon,
                          color: widget.iconColor,
                        ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: PSizes.sm),
        Center(child: Text(widget.text)),
      ],
    );
  }

  Widget _radioSquare(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: PSizes.buttonHeightLg,
        width: PSizes.buttonWidthXSm,
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: widget.onTap,
                child: Container(
                  height: PSizes.imageThumbSize,
                  width: PSizes.imageThumbSize,
                  decoration: BoxDecoration(
                    color: widget.buttonColor,
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: PSizes.iconMd,
                      width: PSizes.iconMd,
                      child: Center(
                        child: SvgPicture.asset(
                          widget.imageIcon,
                          color: PAppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: PSizes.sm),
              Center(child: Text(widget.text)),
              Transform.scale(
                scale: PSizes.paragraphSpacing,
                child: Radio(
                  value: widget.text,
                  activeColor: PAppColors.main,
                  groupValue: widget.selectedValue,
                  onChanged: widget.onChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
