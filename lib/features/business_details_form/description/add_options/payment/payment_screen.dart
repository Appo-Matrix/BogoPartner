import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  double price = 5000;
  double discount = 5000;

  @override
  Widget build(BuildContext context) {
    final total = (price - discount).clamp(0, double.infinity);

    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        centerTitle: false,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
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

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Outer card shell
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: PAppColors.black900,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                children: [
                  SizedBox(height: PSizes.spaceBtwItems),
                  Container(
                    height: 450,
                    width: 360,
                    decoration: BoxDecoration(
                      color: PAppColors.black700,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: PSizes.spaceBtwItems),

                        // Credit card mock
                        Container(
                          height: 175,
                          width: 326,
                          decoration: BoxDecoration(
                            color: PAppColors.main, // green
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Image.asset(PImages.jazz, fit: BoxFit.contain),
                        ),

                        const SizedBox(height: PSizes.spaceBtwSections),

                        //  Subscription box
                        Container(
                          height: 205,
                          width: 319,
                          decoration: BoxDecoration(
                            color: PAppColors.black800,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // header
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: PSizes.lg,
                                  vertical: PSizes.lg,
                                ),
                                decoration: BoxDecoration(
                                  color: PAppColors.black800,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(36),
                                    topRight: Radius.circular(36),
                                  ),
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
                              // rows
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
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Price",
                                            style: PAppStyles.poppins(
                                              color: PAppColors.white,
                                              fontSize: PSizes.fontSizeMd,
                                              weight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "5000 DA",
                                          style: PAppStyles.poppins(
                                            color: PAppColors.white,
                                            fontSize: PSizes.fontSizeMd,
                                            weight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 18),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Discount",
                                            style: PAppStyles.poppins(
                                              color: PAppColors.white,
                                              fontSize: PSizes.fontSizeMd,
                                              weight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "5000 DA",
                                          style: PAppStyles.poppins(
                                            color: PAppColors.white,
                                            fontSize: PSizes.fontSizeMd,
                                            weight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 18),

                                    // dashed divider
                                    LayoutBuilder(
                                      builder: (context, c) {
                                        final dashWidth = 8.0;
                                        final dashSpace = 8.0;
                                        final count =
                                            (c.maxWidth /
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

                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Total amount",
                                            style: PAppStyles.poppins(
                                              color: PAppColors.white,
                                              fontSize: PSizes.fontSizeMd,
                                              weight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "0.00 DA",
                                          style: PAppStyles.poppins(
                                            color: PAppColors.white,
                                            fontSize: PSizes.fontSizeMd,
                                            weight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: PSizes.spaceBtwItems),

                  // CTA pill with chevrons
                  Container(
                    height: 93,
                    width: 360,
                    decoration: BoxDecoration(
                      color: PAppColors.black800,
                      borderRadius: BorderRadius.circular(46),
                    ),

                    child: Row(
                      children: [
                        const SizedBox(width: 45),
                        Text(
                          'Subscribe for free',
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: PSizes.fontSizeMd,
                            weight: FontWeight.w700,
                          ),
                        ),

                        Spacer(),

                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(999),
                          child: Container(
                            height: 79,
                            width: 79,
                            decoration: BoxDecoration(
                              color: PAppColors.main,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 45),
        child: Container(
          height: 92,
          width: double.infinity,
          decoration: BoxDecoration(
            color: PAppColors.black900,
            borderRadius: BorderRadius.circular(35),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 74,
                width: 74,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.circular(28),
                ),
                alignment: Alignment.center,
                child: Image.asset(PImages.mc, height: 28, fit: BoxFit.contain),
              ),
              Container(
                height: 74,
                width: 74,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.circular(28),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  PImages.applePay,
                  height: 26,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 74,
                width: 74,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.circular(28),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  PImages.paypal,
                  height: 26,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 74,
                width: 74,
                decoration: BoxDecoration(
                  color: PAppColors.black800,
                  borderRadius: BorderRadius.circular(28),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  PImages.visa,
                  height: 22,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
