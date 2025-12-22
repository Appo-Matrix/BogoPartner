import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadSection extends StatefulWidget {
  const ImageUploadSection({super.key});

  @override
  State<ImageUploadSection> createState() => _ImageUploadSectionState();
}

class _ImageUploadSectionState extends State<ImageUploadSection> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile =
    await _picker.pickImage(source: source, imageQuality: 80);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
    if (mounted) Navigator.of(context).pop();
  }

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1C1C1C),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.white70),
              title: const Text('Take a Photo',
                  style: TextStyle(color: Colors.white)),
              onTap: () => _pickImage(ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library, color: Colors.white70),
              title: const Text('Choose from Gallery',
                  style: TextStyle(color: Colors.white)),
              onTap: () => _pickImage(ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          width: 384,
          // 🔹 Removed fixed height — it adjusts automatically
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C1C),
            borderRadius: BorderRadius.circular(35),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: _showImageSourceDialog,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _selectedImage == null
                      ? Center(
                    child: Image.asset(
                      'assets/icons/photo.png',
                      height: 38,
                      color: Colors.white70,
                    ),
                  )
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(
                      _selectedImage!,
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const InstructionList(),
            ],
          ),
        ),
      ),
    );
  }
}

class InstructionList extends StatelessWidget {
  const InstructionList({super.key});

  @override
  Widget build(BuildContext context) {
    final instructions = [
      "Share some photos of you so guests know what to expect.",
      "Choose a main photo that makes a good first impression.",
      "The image must be original and without any text or logos.",
    ];

    return Container(
      width: 346,
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: instructions.map((text) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle, color: Colors.red, size: 8),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
