import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/offers/screens/yes_no_pill.dart';

import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/p_text.dart';
import '../widgets/advanced_option_section.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/category_card.dart';
import '../widgets/custom_dropdown_field.dart';
import '../widgets/custom_dropdown_tile.dart';
import '../widgets/custom_price_card.dart';
import '../widgets/step_pill.dart';
import 'add_offer_screen1.dart';
import 'duration_selector.dart';
import 'next_button.dart';




class AddOfferScreen extends StatefulWidget {
  const AddOfferScreen({super.key});

  @override
  State<AddOfferScreen> createState() => _AddOfferScreenState();
}

class _AddOfferScreenState extends State<AddOfferScreen> {
  Future<void> pickTime() async {
    final t = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? const TimeOfDay(hour: 6, minute: 30),
    );
    if (t != null) setState(() => selectedTime = t);
  }

  int step = 1;
  bool preBooking = false;
  bool limitedOffer = true;
  String? selectedOffer;
  bool subscriptionOption = true;
  bool expanded = false;
  bool preBookingRequired = false;
  bool limitedTimeOffer = false;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  bool forMen = false;
  bool forWomen = true;
  bool forChildren = true;

  final List<String> offerList = [
    'Cleaning',
    'Plumbing',
    'Electrician',
    'Painting',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(PSizes.sm),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                AppBarWidget(title: 'Add an offer'),
                 SizedBox(height: PSizes.fontSizeUMdLg),

                /// STEP PILLS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StepPill(label: 'Step One', active: step == 1),
                     SizedBox(width: PSizes.sm),
                    Row(children: List.generate(5, (i) => dot(i == 2))),
                     SizedBox(width: PSizes.sm),
                    StepPill(label: 'Step Two', active: step == 2),
                  ],
                ),

                 SizedBox(height: PSizes.fontSizeUMdLg),

                /// CATEGORY TILE
                Center(
                  child: CustomDropdownTile(
                    label: 'Category',
                    iconPath: "",
                    onTap: () {
                      debugPrint('Category tapped');
                    },
                  ),
                ),

                const SizedBox(height: PSizes.iconLg ),

                /// OFFER NAME DROPDOWN
                Center(
                  child: CustomDropdownFields(
                    hintText: 'Offer name',
                    items: offerList,
                    value: selectedOffer,
                    onChanged: (value) {
                      setState(() => selectedOffer = value);
                    },
                  ),
                ),
                SizedBox(height: PSizes.fontSizeSmx),

                CustomPriceCard(),
                SizedBox(height:  PSizes.fontSizeSmx),
                DurationSelector(),
                SizedBox(height: PSizes.fontSizeSmx),

                /// ✅ FIXED CATEGORY CARDS
                CategoryCard(
                  title: "For men",
                  emojiOrImage: "",
                  bgColor: PAppColors.yellow2,
                  value: forMen,
                  onTap: () {
                    setState(() => forMen = !forMen);
                  },
                ),
                CategoryCard(
                  title: "For women",
                  emojiOrImage: '',
                  bgColor: PAppColors.orange1,
                  value: forWomen,
                  onTap: () {
                    setState(() => forWomen = !forWomen);
                  },
                ),
                CategoryCard(
                  title: "For children",
                  emojiOrImage: PImages.children,
                  bgColor: PAppColors.main,
                  value: forChildren,
                  onTap: () {
                    setState(() => forChildren = !forChildren);
                  },
                ),
                SizedBox(height: PSizes.fontSizeSmx),
                PText(
                  'Can the customer use the entire offer in the \nsame visit?',
                ),
                SizedBox(height: PSizes.fontSizeESm),
                Row(
                  children: [
                    YesNoPill(
                      label: 'yes',
                      value: subscriptionOption,
                      onTap: () => setState(() => subscriptionOption = true),
                    ),

                    YesNoPill(
                      label: 'no',
                      value: !subscriptionOption,
                      onTap: () => setState(() => subscriptionOption = false),
                    ),
                  ],
                ),
                SizedBox(height: PSizes.fontSizeESm),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // align texts at top
                  children: [
                    PText(
                      'Example:',
                      color: PAppColors.error600,
                      fontWeight: FontWeight.w400,
                      fontSize: PSizes.fontSizeXESm,
                    ),
                    SizedBox(width: PSizes.cardRadiusXs), // small spacing
                    Expanded(
                      child: Text(
                        'In hairdressing, a customer cannot get two haircuts on the same day. '
                        'The customer can use the offer today and return later, or bring a friend '
                        'to benefit from it. If your offer is not of this type, select Yes.',
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.fontSizeXESm,
                          weight: FontWeight.w400,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible, // allow full wrap
                      ),
                    ),
                  ],
                ),
                SizedBox(height: PSizes.fontSizeSmx),
                AdvancedOptionSection(),

                SizedBox(height: PSizes.xl),
                NextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddOfferScreen1(),
                    ),
                  );

                }),
                SizedBox(height: PSizes.fontSizeLgx2),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



/// ✅ STEP PILL


/// ✅ DOT
Widget dot(bool active) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: PSizes.xs),
  child: Icon(
    Icons.circle,
    size:PSizes.sm,
    color: active ? PAppColors.primary : PAppColors.black600,
  ),
);

















