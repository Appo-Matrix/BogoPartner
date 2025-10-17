import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import '../../../../../../core/utils/constants/app_assets.dart';

class PendingApprovalScreen extends StatefulWidget {
  const PendingApprovalScreen({super.key});

  @override
  State<PendingApprovalScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<PendingApprovalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            size: 24,
            color: PAppColors.white,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Complete non configuré",
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.iconMd,
                    weight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: PSizes.md),

                // Image that might overflow on small screens
                Image.asset(
                  PImages.pending,
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),

                const SizedBox(height: PSizes.lg),

                // === Pending message box ===
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: PAppColors.error500,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(PImages.loading, height: 30),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Your request is currently under review",
                              style: PAppStyles.poppins(
                                color: PAppColors.white,
                                fontSize: PSizes.iconSms,
                                weight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: PSizes.md),
                      Text(
                        "We will respond within 24 hours maximum. We appreciate your patience.",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.iconSm,
                          weight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: PSizes.sm),
                      Text(
                        "Our team will contact you soon.",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.iconSm,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: PSizes.lg),

                // === Contact box ===
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  decoration: BoxDecoration(
                    color: PAppColors.black900,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Contact for assistance",
                        style: PAppStyles.poppins(
                          color: PAppColors.error400,
                          fontSize: PSizes.iconSms,
                          weight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: PSizes.md),
                      Text(
                        "restaurants@bogo.com",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.iconSm,
                          weight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: PSizes.sm),
                      Text(
                        "05501244444",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.iconSm,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
