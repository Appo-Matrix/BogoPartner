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

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,

        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_outlined,
            size: 24,
            color: PAppColors.white,
          ),
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Complete non configuré",
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.iconMd,
                    weight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: PSizes.md),

              Image.asset(PImages.pending),

              const SizedBox(height: PSizes.md),

              Container(
                height: 131,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.error500,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: PSizes.sm),
                      Row(
                        children: [
                          Image.asset(PImages.loading),
                          Text(
                            "Your request is currently under review",
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: PSizes.iconSms,
                              weight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: PSizes.md),

                      Text(
                        "We will respond within 24 hours maximum. We appreciate your patience",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.iconSm,
                          weight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: PSizes.md),

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
              ),

              const SizedBox(height: PSizes.md),

              Container(
                height: 117,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: PSizes.sm),

                      Text(
                        "contact for assistance",
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

                      const SizedBox(height: PSizes.md),

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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
