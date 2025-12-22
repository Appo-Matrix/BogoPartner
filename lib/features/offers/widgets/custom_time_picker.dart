import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class CustomTimePicker extends StatefulWidget {
  final TimeOfDay initialTime;
  final ValueChanged<TimeOfDay> onChanged;

  const CustomTimePicker({
    super.key,
    required this.initialTime,
    required this.onChanged,
  });

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  late int hour;
  late int minute;
  late String period; // AM / PM

  @override
  void initState() {
    super.initState();
    hour = widget.initialTime.hourOfPeriod == 0
        ? 12
        : widget.initialTime.hourOfPeriod;
    minute = widget.initialTime.minute;
    period = widget.initialTime.period == DayPeriod.am ? "AM" : "PM";
  }

  void _updateTime() {
    final int realHour = (period == "AM")
        ? (hour == 12 ? 0 : hour)
        : (hour == 12 ? 12 : hour + 12);

    widget.onChanged(TimeOfDay(hour: realHour, minute: minute));
  }

  Widget _pill(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: PSizes.buttonWidthXSm,
        height: PSizes.mi4,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: PAppColors.darkGray780,
          borderRadius: BorderRadius.circular(PSizes.mi6),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: PSizes.xl,
            height: PSizes.dividerHeight,
            // line-height 100%
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _pill(hour.toString().padLeft(2, "0"), () {
          setState(() {
            hour = (hour % 12) + 1; // loop 1–12
            _updateTime();
          });
        }),
        _pill(minute.toString().padLeft(2, "0"), () {
          setState(() {
            minute = (minute + 5) % 60; // step by 5
            _updateTime();
          });
        }),
        _pill(period, () {
          setState(() {
            period = (period == "AM") ? "PM" : "AM";
            _updateTime();
          });
        }),
      ],
    );
  }
}