import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  double price = 5000;
  double discount = 5000;

  @override
  Widget build(BuildContext context) {
    final double total = price - discount;

    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // ─── APP BAR ────────────────────────────────
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        centerTitle: false,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            size: PSizes.iconLg,
            color: PAppColors.white,
          ),
        ),
        title: Text(
          "Payment",
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeLg,
            weight: FontWeight.w700,
          ),
        ),
      ),

      // ─── BODY (SCROLLABLE) ──────────────────────
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            // Outer Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: PAppColors.black900,
                borderRadius: BorderRadius.circular(60),
              ),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: [
                  // Inner Card
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      color: PAppColors.black700,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Credit Card
                        Container(
                          height: 175,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: PAppColors.main,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Image.asset(PImages.jazz, fit: BoxFit.contain),
                        ),

                        const SizedBox(height: PSizes.spaceBtwSections),

                        // Subscription Info
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: PAppColors.black800,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: PSizes.lg,
                                  vertical: PSizes.lg,
                                ),
                                child: Text(
                                  'Subscription',
                                  style: PAppStyles.poppins(
                                    color: PAppColors.white,
                                    fontSize: PSizes.fontSizeMd,
                                    weight: FontWeight.w700,
                                  ),
                                ),
                              ),

                              // Rows Section
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: PSizes.lg,
                                  vertical: PSizes.lg,
                                ),
                                decoration: BoxDecoration(
                                  color: PAppColors.black700.withOpacity(.4),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(36),
                                    bottomRight: Radius.circular(36),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    _priceRow("Price", "$price DA"),
                                    const SizedBox(height: 18),
                                    _priceRow("Discount", "$discount DA"),
                                    const SizedBox(height: 18),

                                    // Dashed Divider
                                    LayoutBuilder(
                                      builder: (context, constraints) {
                                        const dashWidth = 8.0;
                                        const dashSpace = 8.0;
                                        final count = (constraints.maxWidth /
                                            (dashWidth + dashSpace))
                                            .floor();
                                        return Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: List.generate(
                                            count,
                                                (_) => Container(
                                              width: dashWidth,
                                              height: 2,
                                              color: PAppColors.black600,
                                            ),
                                          ),
                                        );
                                      },
                                    ),

                                    const SizedBox(height: 18),
                                    _priceRow("Total amount", "$total DA"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: PSizes.spaceBtwSections),

                  // CTA Button
                  Container(
                    width: 360,
                    height: 93,
                    decoration: BoxDecoration(
                      color: PAppColors.black800,
                      borderRadius: BorderRadius.circular(46),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Subscribe for free',
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: PSizes.fontSizeMd,
                            weight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(999),
                          child: Container(
                            height: 79,
                            width: 79,
                            decoration: const BoxDecoration(
                              color: PAppColors.main,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.chevron_right, color: Colors.white),
                                  Icon(Icons.chevron_right, color: Colors.white),
                                  Icon(Icons.chevron_right, color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: PSizes.spaceBtwSections),

                  // ─── PAYMENT BUTTONS SECTION ───────────────────────────


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _paymentButton(PImages.mc, 28),
                      _paymentButton(PImages.applePay, 26),
                      _paymentButton(PImages.paypal, 26),
                      _paymentButton(PImages.visa, 22),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  // ─── HELPER WIDGETS ────────────────────────────────────────────

  Widget _priceRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
              weight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          value,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeMd,
            weight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _paymentButton(String asset, double height) {
    return Container(
      height: 74,
      width: 74,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(28),
      ),
      alignment: Alignment.center,
      child: Image.asset(asset, height: height, fit: BoxFit.contain),
    );
  }
}
