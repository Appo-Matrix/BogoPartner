import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/features/offers/screens/yes_no_pill.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/p_text.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/category_card.dart';
import '../widgets/custom_dropdown_field.dart';
import '../widgets/custom_dropdown_tile.dart';
import '../widgets/custom_offer_toggle_card.dart';
import '../widgets/custom_price_card.dart';
import '../widgets/step_pill.dart';
import 'duration_selector.dart';
import 'next_button.dart';

class AddOfferScreen1 extends StatefulWidget {
  const AddOfferScreen1({super.key});

  @override
  State<AddOfferScreen1> createState() => _AddOfferScreen1State();
}

class _AddOfferScreen1State extends State<AddOfferScreen1> {
  int step = 1;
  bool preBooking = false;
  bool limitedOffer = true;
  String? selectedOffer;
  bool subscriptionOption = true;

  bool forMen = false;
  bool forWomen = false;
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
          padding: EdgeInsets.all(PSizes.sm),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(title: 'Add an offer'),
                SizedBox(height: PSizes.fontSizeUMdLg),

                // STEP PILLS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StepPill(label: 'Step One', active: step == 1),
                      SizedBox(width: PSizes.fontSizeESm),
                      Row(children: List.generate(5, (i) => dot(i == 2))),
                      SizedBox(width: PSizes.fontSizeESm),
                      StepPill(label: 'Step Two', active: step == 2),
                    ],
                  ),
                ),
                SizedBox(height: PSizes.fontSizeUMdLg),

                // CATEGORY TILE
                Center(
                  child: CustomDropdownTile(
                    label: 'Category',
                    iconPath:'',
                    onTap: () {
                      debugPrint('Category tapped');
                    },
                  ),
                ),
                const SizedBox(height: PSizes.iconLg),

                // OFFER NAME DROPDOWN
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
                SizedBox(height: PSizes.fontSizeSmx),
                DurationSelector(),
                SizedBox(height: PSizes.fontSizeSmx),

                // CATEGORY CARDS
                CategoryCard(
                  title: "For men",
                  emojiOrImage: '',
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
                  emojiOrImage:'',
                  bgColor: PAppColors.main,
                  value: forChildren,
                  onTap: () {
                    setState(() => forChildren = !forChildren);
                  },
                ),
                SizedBox(height: PSizes.fontSizeSmx),

                PText('Can the customer use the entire offer in the same visit?'),
                SizedBox(height: PSizes.fontSizeESm),
                PText(
                  'This field is designated for offers that the customer cannot take when he arrives, such as a haircut, for example',
                  color: PAppColors.black600,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: PSizes.fontSizeESm),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                SizedBox(height: PSizes.fontSizeESm),

                CustomOfferToggleCard(
                  title: 'Pre booking required',
                  subtitle: 'The Reservation service mandatory',
                  iconAsset: '',
                  value: preBooking,
                  onChanged: (v) => setState(() => preBooking = v),
                  backgroundColor: PAppColors.darkGray750,
                  colors: PAppColors.purple,
                ),
                const SizedBox(height: 15),

                CustomOfferToggleCard(
                  title: 'Limited-time offer',
                  subtitle:
                  'If the offer is after a certain period and expires',
                  iconAsset: '',
                  value: limitedOffer,
                  onChanged: (v) => setState(() => limitedOffer = v),
                  backgroundColor: PAppColors.darkGray750,
                  colors: PAppColors.yellow1,
                ),

                SizedBox(height: PSizes.xl),
                PText(
                  'This option is only available for time-limited offers, such as cinema or activities that occur once within a specified period, and others',
                  color: PAppColors.black600,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: PSizes.fontSizeUL),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [NextButton(onPressed: () {
                    context.push("/addOfferStepTwo");
                  })],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/// ✅ DOT
Widget dot(bool active) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: PSizes.xs),
  child: Icon(
    Icons.circle,
    size: PSizes.sm,
    color: active ? PAppColors.primary : PAppColors.black600,
  ),
);
