import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class PInputField extends StatefulWidget {
  final String leadingIcon;
  final String actionIcon;
  final String hintText;

  const PInputField({
    super.key,
    required this.leadingIcon,
    required this.actionIcon,
    required this.hintText,
  });

  @override
  State<PInputField> createState() => _PInputFieldState();
}

class _PInputFieldState extends State<PInputField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool _isEditable = false;

  @override
  void initState() {
    super.initState();


    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          _isEditable = false;
        });
      }
    });
  }

  void _enableEditing() {
    setState(() {
      _isEditable = true;
    });
    FocusScope.of(context).requestFocus(_focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: PAppColors.black800, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(widget.leadingIcon, height: 29, width: 23),
            const SizedBox(width: 15),
            Expanded(
              child: AbsorbPointer(
                absorbing: !_isEditable,
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 18,
                    weight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: PAppStyles.poppins(
                      color: Colors.white54,
                      fontSize: 18,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: _enableEditing,
              child: Image.asset(widget.actionIcon, height: 29, width: 23),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
