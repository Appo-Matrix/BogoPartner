import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/features/add_company/description/widgets/radio_choice_pill.dart';
import 'package:partner_app/features/add_company/description/widgets/working_day_row.dart';
import '../../../core/utils/common/Primary_button.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';
import '../../business_details_form/description/widgets/custom_position_box.dart';
import '../../business_details_form/description/widgets/custom_tap_box.dart';
import '../../business_details_form/description/widgets/discripton_text_field.dart';
import '../../business_details_form/description/widgets/file_upload_box.dart';
import '../../business_details_form/description/widgets/offers_block.dart';

class DescriptionScreenTwo extends StatefulWidget {
  const DescriptionScreenTwo({super.key});

  @override
  State<DescriptionScreenTwo> createState() => _DescriptionScreenTwoState();
}

class _DescriptionScreenTwoState extends State<DescriptionScreenTwo> {
  final TextEditingController _descController = TextEditingController();

  int _reservationIndex = 0;

  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int buyOneCountBottom = 2;
  int discountCountBottom = 3;

  @override
  void dispose() {
    _descController.dispose();
    super.dispose();
  }

  final _days = const [
    'Saturday',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  // ---- FIX: no 'late', give safe defaults
  List<bool> _enabled = const [];
  List<String> _open = const [];
  List<String> _close = const [];

  @override
  void initState() {
    super.initState();
    _initDayLists();
  }

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
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.maybePop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            size: PSizes.iconLg,
            color: PAppColors.white,
          ),
        ),
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: PSizes.md),

              // Description
              Text(
                'Description',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.sm),

              // TextField (100 words, border none)
              DescriptionTextField(
                controller: _descController,
                hintText: "Write a description of no more than 100 words",
                onTap: () {},
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Map
              Text(
                'Locate your location on the map',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              CustomPositionBox(
                text: "Auto Position",
                height: 92,
                width: 180,
                backgroundColor: PAppColors.black1000,
                textColor: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                containerHeight: 189,
                containerWidth: double.infinity,
              ),

              const SizedBox(height: PSizes.md),
              Row(
                children: [
                  Expanded(
                    child: CustomTapBox(
                      text: "Latitude",
                      height: 92,
                      backgroundColor: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: PSizes.md),
                  Expanded(
                    child: CustomTapBox(
                      text: "Longitude",
                      height: 92,
                      backgroundColor: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Documents
              Text(
                'Documents',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              FileUploadBox(
                title: "Files uploading...",
                galleryTitle: "Gallery photo Product",
                galleryImage: PImages.file,
                onGalleryTap: () {},
                files: [
                  FileUploadItem(
                    name: "Commercial register",
                    icon: PImages.doc,
                    progress: 0.60,
                  ),
                  FileUploadItem(
                    name: "Logo jpeg",
                    icon: PImages.logo,
                    progress: 0.60,
                  ),
                  FileUploadItem(
                    name: "Logo ai",
                    icon: PImages.ai,
                    progress: 0.10,
                  ),
                ],
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

              const SizedBox(height: PSizes.spaceBtwSections),

              // Offers Section 1
              Text(
                'How many offers do you want to present to each customer?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.xs),
              Text(
                'The more offers you want to present to a single customer, the increase in the number of your offers means an increase in opportunities to attract attention',
                style: PAppStyles.poppins(
                  color: PAppColors.black500,
                  fontSize: PSizes.fontSizeSm,
                  weight: FontWeight.w400,
                  height: 1.4,
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

              // Offers Section 2
              Text(
                'How many offers do you want to give to a customer after completing the loyalty program?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              OffersBlock(
                leftLabel: 'BUY ONE GET ONE',
                leftCount: buyOneCountBottom,
                onMinusLeft: () => setState(() => buyOneCountBottom--),
                onPlusLeft: () => setState(() => buyOneCountBottom++),
                rightLabel: '25% DISCOUNT',
                rightCount: discountCountBottom,
                onMinusRight: () => setState(() => discountCountBottom--),
                onPlusRight: () => setState(() => discountCountBottom++),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              //  Continue Button
              PrimaryButton(
                text: "Continue",
                width: double.infinity,
                height: 92,
                onTap: () {
                  context.go("/addOptionsScreen");
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
