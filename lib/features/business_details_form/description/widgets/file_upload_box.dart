import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class FileUploadBox extends StatelessWidget {
  final String title;
  final List<FileUploadItem> files;
  final String galleryTitle;
  final String galleryImage;
  final VoidCallback onGalleryTap;

  const FileUploadBox({
    super.key,
    required this.title,
    required this.files,
    required this.galleryTitle,
    required this.galleryImage,
    required this.onGalleryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: PSizes.md,
        vertical: PSizes.md,
      ),
      child: Column(
        children: [
          const SizedBox(height: PSizes.md),

          // Top folder icon
          Image.asset(galleryImage, height: 28, width: 28),
          const SizedBox(height: PSizes.md),

          // Title text
          Text(
            title,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
              weight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: PSizes.spaceBtwSections),

          // --- File rows ---
          for (var file in files) ...[
            _buildFileRow(file),
            const SizedBox(height: PSizes.spaceBtwItems),
          ],

          const SizedBox(height: PSizes.spaceBtwSections),

          // Gallery Section
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              galleryTitle,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                weight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: PSizes.md),

          Row(
            children: [
              // Image preview
              Container(
                height: 92,
                width: 92,
                decoration: BoxDecoration(
                  color: PAppColors.black1000,
                  borderRadius: BorderRadius.circular(35),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  PImages.photo,
                  height: 28,
                  width: 28,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: PSizes.md),

              // Add button with custom onTap
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color(0xFF8BC255),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: onGalleryTap,
                  icon: const Icon(Icons.add, color: Colors.white),
                  iconSize: PSizes.iconMd,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFileRow(FileUploadItem file) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // File icon
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: PAppColors.black1000,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            file.icon,
            height: PSizes.iconSm,
            width: PSizes.iconSm,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: PSizes.md),

        // File title + progress
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                file.name,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.sm),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: file.progress,
                  minHeight: 8,
                  color: PAppColors.main,
                  backgroundColor: PAppColors.black700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: PSizes.md),

        // Progress percentage
        Text(
          "${(file.progress * 100).toInt()}%",
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeSm,
            weight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class FileUploadItem {
  final String name;
  final String icon;
  final double progress;

  FileUploadItem({
    required this.name,
    required this.icon,
    required this.progress,
  });
}
