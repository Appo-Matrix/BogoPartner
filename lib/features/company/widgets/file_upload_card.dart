

import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';

class FileUploadCard extends StatelessWidget {
  final List<Map<String, dynamic>> _uploadedFiles = [
    {"icon": Icons.insert_drive_file, "name": "commercial register", "progress": 0.6},
    {"icon": Icons.image, "name": "Logo jpeg", "progress": 0.6},
    {"icon": Icons.image, "name": "logo ai", "progress": 0.1},
  ];

  FileUploadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: PAppColors.darkGray750, // dark surface
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.folder, color: Colors.purpleAccent, size: 40),
          const SizedBox(height: 8),
          const Text(
            "Files uploading...",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),

          // Uploaded Files List
          ..._uploadedFiles.map((file) => _buildFileProgressItem(
            file["icon"] as IconData,
            file["name"] as String,
            file["progress"] as double,
          )),

          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "galery photo Product",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFileProgressItem(IconData icon, String name, double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          // Icon container
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 12),

          // File info + progress
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 6),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 6,
                    backgroundColor: Colors.white12,
                    valueColor: const AlwaysStoppedAnimation<Color>(PAppColors.primary500),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),
          Text("${(progress * 100).toInt()}%",
              style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}