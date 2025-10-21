import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_assets.dart';

class PEditableImage extends StatefulWidget {
  final double size;
  final String defaultImage;

  const PEditableImage({
    super.key,
    this.size = 92,
    this.defaultImage = PImages.photos,
  });

  @override
  State<PEditableImage> createState() => _PEditableImageState();
}

class _PEditableImageState extends State<PEditableImage> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    // Ask for permission first
    final status = await Permission.photos.request();

    if (status.isGranted) {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
        });
      }
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permission denied to access gallery')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: widget.size,
          width: widget.size,
          decoration: BoxDecoration(
            color: PAppColors.black1000,
            borderRadius: BorderRadius.circular(35),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: _selectedImage != null
                ? Image.file(_selectedImage!, fit: BoxFit.cover)
                : Image.asset(widget.defaultImage, fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: _pickImage,
          child: Image.asset(PImages.edits, height: 29, width: 23),
        ),
      ],
    );
  }
}
