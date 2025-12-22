import 'package:flutter/material.dart';


import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';

import '../../../core/utils/constants/p_text.dart';
import '../screens/time_pill.dart';
import 'calendar_preview_widget.dart';
import 'custom_offer_toggle_card.dart';


class AdvancedOptionSection extends StatefulWidget {
  const AdvancedOptionSection({super.key});

  @override
  State<AdvancedOptionSection> createState() => _AdvancedOptionSectionState();
}

class _AdvancedOptionSectionState extends State<AdvancedOptionSection> {
  bool isExpanded = false;
  bool preBooking = false;
  bool limitedOffer = true;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  /// --- Time Picker ---
  Future<void> pickTime() async {
    final t = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? const TimeOfDay(hour: 6, minute: 30),
    );
    if (t != null) setState(() => selectedTime = t);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --- Header ---
          GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: Row(
              children: [
                const PText(
                  'advanced option',
                  color: PAppColors.white,
                  fontSize: PSizes.iconSm,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(width: PSizes.fontSizeLgx2),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_up_rounded,
                  color: PAppColors.white,
                  size: 26,
                ),
              ],
            ),
          ),

          // --- Expanded Section ---
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 400),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: const SizedBox.shrink(),
            secondChild: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// --- Toggle Cards ---
                  CustomOfferToggleCard(
                    title: 'Pre booking required',
                    subtitle: 'The Reservation service mandatory',
                    iconAsset: PImages.reservation,
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

                  /// --- Conditional Info Text ---
                  if (limitedOffer) ...[
                    const SizedBox(height: 10),
                    const PText(
                      'This option is only available for time-limited offers, such as cinema or activities that occur once within a specified period, and others',
                      fontSize: PSizes.fontSizeEaSm,
                      fontWeight: FontWeight.w600,
                      color: PAppColors.error800,
                    ),
                    const SizedBox(height: 20),

                    /// --- Calendar Widget ---
                    const CalendarPreviewWidget(),
                    const SizedBox(height: 18),

                    /// --- Time Row ---
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimePill(
                            label: selectedTime != null
                                ? selectedTime!.hour.toString().padLeft(2, '0')
                                : '06',
                            onTap: pickTime,
                          ),
                          TimePill(
                            label: selectedTime != null
                                ? selectedTime!.minute.toString().padLeft(2, '0')
                                : '30',
                            onTap: pickTime,
                          ),
                          TimePill(
                            label: selectedTime != null
                                ? (selectedTime!.period == DayPeriod.am
                                ? 'AM'
                                : 'PM')
                                : 'AM',
                            onTap: pickTime,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
