import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class WorkingHoursCard extends StatefulWidget {
  const WorkingHoursCard({super.key});

  @override
  State<WorkingHoursCard> createState() => _WorkingHoursCardState();
}

class _WorkingHoursCardState extends State<WorkingHoursCard> {
  final Map<String, bool> _workingDays = {
    "Saturday": false,
    "Sunday": false,
    "Monday": false,
    "Tuesday": false,
    "Wednesday": false,
    "Thursday": false,
    "Friday": false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PSizes.md),
      decoration: BoxDecoration(
        color: PAppColors.darkSurface,
        borderRadius: BorderRadius.circular(PSizes.cardRadiusLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// --- Header ---
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: PAppColors.error400,
                child: const Icon(Icons.access_time,
                    color: PAppColors.black1000, size: 18),
              ),
              const SizedBox(width: PSizes.sm),
              Text(
                "Working hours",
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeSm,
                  weight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: PSizes.spaceBtwSections),

          /// --- Days List ---
          ..._workingDays.keys.map((day) {
            return _WorkingDayRow(
              day: day,
              isSelected: _workingDays[day]!,
              onToggle: () {
                setState(() {
                  _workingDays[day] = !_workingDays[day]!;
                });
              },
            );
          }),
        ],
      ),
    );
  }
}

class _WorkingDayRow extends StatefulWidget {
  final String day;
  final bool isSelected;
  final VoidCallback onToggle;

  const _WorkingDayRow({
    required this.day,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  State<_WorkingDayRow> createState() => _WorkingDayRowState();
}

class _WorkingDayRowState extends State<_WorkingDayRow> {
  String? openTime = "Open";
  String? closeTime = "Close";

  final List<String> timeOptions = [
    "08:00 AM",
    "09:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "01:00 PM",
    "02:00 PM",
    "03:00 PM",
    "04:00 PM",
    "05:00 PM",
    "06:00 PM",
    "07:00 PM",
    "08:00 PM",
    "09:00 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.xs),
      child: Row(
        children: [
          /// --- Custom Checkbox ---
          GestureDetector(
            onTap: widget.onToggle,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: widget.isSelected
                      ? PAppColors.primary500
                      : PAppColors.gray400,
                  width: 2,
                ),
                color: widget.isSelected
                    ? PAppColors.primary500
                    : Colors.transparent,
              ),
              child: widget.isSelected
                  ? const Icon(Icons.check,
                  size: 16, color: PAppColors.white)
                  : null,
            ),
          ),
          const SizedBox(width: PSizes.md),

          /// --- Day text ---
          Expanded(
            child: Text(
              widget.day,
              style: PAppStyles.poppins(color: PAppColors.white, fontSize: PSizes.fontSizeSm, weight: FontWeight.w400),
            ),
          ),

          /// --- Dropdowns only if checked ---
          if (widget.isSelected) ...[
            _buildDropdown(openTime!, (val) {
              setState(() {
                openTime = val;
              });
            }),
            const SizedBox(width: PSizes.sm),
            _buildDropdown(closeTime!, (val) {
              setState(() {
                closeTime = val;
              });
            }),
          ]
        ],
      ),
    );
  }

  Widget _buildDropdown(String value, ValueChanged<String?> onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PSizes.sm),
      decoration: BoxDecoration(
        color: PAppColors.darkGray850,
        borderRadius: BorderRadius.circular(PSizes.cardRadiusSm),
      ),
      child: DropdownButton<String>(
        value: timeOptions.contains(value) ? value : null,
        hint: Text(
          value,
          style: PAppStyles.poppins(color: PAppColors.white, fontSize: PSizes.fontSizeSm, weight: FontWeight.w400),
        ),
        icon: const Icon(Icons.keyboard_arrow_down,
            color: PAppColors.gray300, size: PSizes.iconSm),
        dropdownColor: PAppColors.darkGray850,
        underline: const SizedBox(),
        style: PAppStyles.poppins(color: PAppColors.white, fontSize: PSizes.fontSizeSm, weight: FontWeight.w400),
        items: timeOptions.map((time) {
          return DropdownMenuItem(
            value: time,
            child: Text(
              time,
              style: PAppStyles.poppins(color: PAppColors.white, fontSize: PSizes.fontSizeSm, weight: FontWeight.w400),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
