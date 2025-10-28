import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class PictureSelectorWidget extends StatefulWidget {
  final String imageAsset;
  final String rightAsset;
  final String rightText;

  const PictureSelectorWidget({
    super.key,
    required this.imageAsset,
    required this.rightAsset,
    required this.rightText ,
  });

  @override
  State<PictureSelectorWidget> createState() => _PictureSelectorWidgetState();
}

class _PictureSelectorWidgetState extends State<PictureSelectorWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedImage;
  int _selectedIndex = 0;

  Future<void> _pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _pickedImage = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 92,
            width: 122,
            decoration: BoxDecoration(
              color: PAppColors.black800,
              borderRadius: BorderRadius.circular(35),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(widget.imageAsset, fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Transform.scale(
              scale: 1.5, // ≈ 27px
              child: Radio<int>(
                value: 0,
                groupValue: _selectedIndex,
                activeColor: PAppColors.main,
                fillColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return PAppColors.main;
                  }
                  return PAppColors.black800;
                }),
                onChanged: (val) => setState(() => _selectedIndex = val!),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),

          Container(height: 70, width: 1, color: PAppColors.black600),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Transform.scale(
              scale: 1.5,
              child: Radio<int>(
                value: 1,
                groupValue: _selectedIndex,
                activeColor: PAppColors.main,
                fillColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return PAppColors.main;
                  }
                  return PAppColors.black800;
                }),
                onChanged: (val) => setState(() => _selectedIndex = val!),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),

          GestureDetector(
            onTap: _pickImage,
            child: Container(
              height: 92,
              width: 122,
              decoration: BoxDecoration(
                color: PAppColors.black800,
                borderRadius: BorderRadius.circular(35),
              ),
              clipBehavior: Clip.antiAlias,
              child: _pickedImage != null
                  ? Image.file(File(_pickedImage!.path), fit: BoxFit.cover)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.rightAsset,
                          height: 32,
                          width: 32,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          widget.rightText,
                          style: PAppStyles.poppins(
                            color: Colors.white,
                            fontSize: 13,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
