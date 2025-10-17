import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class EditableTextField extends StatefulWidget {
  final String hintText;
  final String actionIcon;

  const EditableTextField({
    super.key,
    required this.hintText,
    required this.actionIcon,
  });

  @override
  State<EditableTextField> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<EditableTextField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isEditable = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() => _isEditable = false);
      }
    });
  }

  void _enableEditing() {
    setState(() => _isEditable = true);
    FocusScope.of(context).requestFocus(_focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: PAppColors.black800, width: 1),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          // Edit Icon (top right)
          GestureDetector(
            onTap: _enableEditing,
            child: Image.asset(widget.actionIcon, height: 24, width: 24),
          ),

          // TextField area
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 35),
            child: AbsorbPointer(
              absorbing: !_isEditable,
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                maxLines: 15,
                minLines: 1,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: 16,
                  weight: FontWeight.w500,
                  height: 1.2,
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
                    fontSize: 16,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
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
