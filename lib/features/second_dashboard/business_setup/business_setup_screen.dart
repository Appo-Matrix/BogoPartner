import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/second_dashboard/business_setup/widgets/editable_image.dart';
import 'package:partner_app/features/second_dashboard/business_setup/widgets/editable_text_field.dart';
import '../../../core/utils/common/Primary_button.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../add_company/description/widgets/radio_choice_pill.dart';
import '../../add_company/description/widgets/working_day_row.dart';
import '../../business_details_form/description/widgets/offers_block.dart';

class BusinessSetupScreen extends StatefulWidget {
  const BusinessSetupScreen({super.key});

  @override
  State<BusinessSetupScreen> createState() => _BusinessSetupScreenState();
}

class _BusinessSetupScreenState extends State<BusinessSetupScreen> {
  int _reservationIndex = 0;

  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int buyOneCountBottom = 2;
  int discountCountBottom = 3;

  final _days = const [
    'Saturday',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  List<bool> _enabled = const [];
  List<String> _open = const [];
  List<String> _close = const [];

  void _initDayLists() {
    _enabled = List<bool>.filled(_days.length, false);
    _open = List<String>.filled(_days.length, 'Open');
    _close = List<String>.filled(_days.length, 'close');
  }

  // Extra safety for hot-reload/state retention
  void _ensureDayLists() {
    if (_enabled.length != _days.length ||
        _open.length != _days.length ||
        _close.length != _days.length) {
      _initDayLists();
    }
  }

  @override
  Widget build(BuildContext context) {
    _ensureDayLists();
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(showTitle: false, showBackIcon: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Gallery photo Product",
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 16,
                          weight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PEditableImage(),
                          PEditableImage(),
                          PEditableImage(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Text Field
              EditableTextField(
                hintText: "Write a description of no more than 100 words",
                actionIcon: PImages.edits,
              ),

              const SizedBox(height: PSizes.spaceBtwItems),

              // Documents
              Text(
                'Worktime',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: PSizes.spaceBtwItems),

              // Working hours box
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(35),
                ),
                padding: const EdgeInsets.all(PSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // header
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            // replace with PAppColors.orange if exists
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.access_time,
                            color: PAppColors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: PSizes.md),
                        Text(
                          'Working hours',
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: PSizes.fontSizeMd,
                            weight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: PSizes.lg),

                    // days list
                    ...List.generate(_days.length, (i) {
                      return WorkingDayRow(
                        day: _days[i],
                        enabled: _enabled[i],
                        openText: _open[i],
                        closeText: _close[i],
                        onToggleDay: () =>
                            setState(() => _enabled[i] = !_enabled[i]),
                        onTapOpen: () {
                          // setState(() => _open[i] = '09:00');
                        },
                        onTapClose: () {
                          // setState(() => _close[i] = '18:00');
                        },
                      );
                    }),
                  ],
                ),
              ),

              const SizedBox(height: PSizes.spaceBtwItems),

              // Documents
              Text(
                'Is reservation required for all offers?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: PSizes.spaceBtwItems),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioChoicePill(
                      label: 'yes',
                      selected: _reservationIndex == 0,
                      onTap: () => setState(() => _reservationIndex = 0),
                    ),
                  ),
                  const SizedBox(width: PSizes.spaceBtwItems),
                  Expanded(
                    child: RadioChoicePill(
                      label: 'no',
                      selected: _reservationIndex == 1,
                      onTap: () => setState(() => _reservationIndex = 1),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Offers Section 2
              Text(
                'How many offers can be given to one customer?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: PSizes.md),
              OffersBlock(
                leftLabel: 'BUY ONE GET ONE',
                leftCount: buyOneCountTop,
                onMinusLeft: () => setState(() => buyOneCountTop--),
                onPlusLeft: () => setState(() => buyOneCountTop++),
                rightLabel: '25% DISCOUNT',
                rightCount: discountCountTop,
                onMinusRight: () => setState(() => discountCountTop--),
                onPlusRight: () => setState(() => discountCountTop++),
              ),

              const SizedBox(height: PSizes.md),

              // Offers Section 2
              Text(
                'How many offers can be given to one customer?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: PSizes.md),
              OffersBlock(
                leftLabel: 'BUY ONE GET ONE',
                leftCount: buyOneCountTop,
                onMinusLeft: () => setState(() => buyOneCountTop--),
                onPlusLeft: () => setState(() => buyOneCountTop++),
                rightLabel: '25% DISCOUNT',
                rightCount: discountCountTop,
                onMinusRight: () => setState(() => discountCountTop--),
                onPlusRight: () => setState(() => discountCountTop++),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              Container(
                height: 148,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(PImages.ball, height: 30, width: 30),
                          Text(
                            'Important warning',
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 26,
                              weight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Text(
                        'There are some properties that cannot be modified, please call to request this',
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 17,
                          weight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'The amendment does not apply to customers who have applied for the offer',
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 17,
                          weight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              Container(
                height: 117,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact for assistance',
                      style: PAppStyles.poppins(
                        color: Colors.red,
                        fontSize: 26,
                        weight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      'restaurants@bogo.com',
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 26,
                        weight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      '05501244444',
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 26,
                        weight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              //  Continue Button
              PrimaryButton(
                text: "Send request information",
                width: double.infinity,
                height: 92,
                onTap: () {
                  // context.go("/addOptionScreen");
                },
              ),

              const SizedBox(height: PSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
