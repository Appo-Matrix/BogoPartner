// calendar_widgets.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/constants/app_colors.dart';


/// Top-level widget: shows Month/Year + arrows and the reservation week strip.
/// Arrows change the displayed week. Tap pill to select a date.
class CalendarPreviewWidget extends StatefulWidget {
  const CalendarPreviewWidget({super.key});

  @override
  State<CalendarPreviewWidget> createState() => _CalendarPreviewWidgetState();
}

class _CalendarPreviewWidgetState extends State<CalendarPreviewWidget> {
  DateTime displayedDate = DateTime.now(); // controls which week is shown
  DateTime selectedDate = DateTime.now(); // currently selected day

  void _changeWeek(int weeksOffset) {
    setState(() {
      displayedDate = displayedDate.add(Duration(days: weeksOffset * 7));
      // optionally move selection to new week's same weekday:
      selectedDate = displayedDate;
    });
  }

  void _onDaySelected(DateTime day) {
    setState(() => selectedDate = day);
  }

  @override
  Widget build(BuildContext context) {
    // Keep widget width close to your design but adapt to smaller screens
    final availableW = MediaQuery.of(context).size.width - 32; // safe margins
    final widgetW = min(373.0, max(300.0, availableW)); // keep reasonable min

    final monthYear = DateFormat('MMMM yyyy').format(displayedDate);

    return Center(
      child: Container(
        width: widgetW,
        height: 135,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF141414),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    monthYear,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => _changeWeek(-1),
                      icon: const Icon(Icons.chevron_left, color: Colors.white),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      splashRadius: 20,
                    ),
                    const SizedBox(width: 6),
                    IconButton(
                      onPressed: () => _changeWeek(1),
                      icon: const Icon(Icons.chevron_right, color: Colors.white),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      splashRadius: 20,
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 8),

            // Reservation strip
            Expanded(
              child: ReservationCalendar(
                width: widgetW - 8, // small inner spacing
                displayedDate: displayedDate,
                selectedDate: selectedDate,
                onDaySelected: _onDaySelected,
                backgroundColor: const Color(0xFF141414),
                pillSelectedColor: const Color(0xFF89E56F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Responsive reservation week strip.
/// - `displayedDate` defines which week to show (week starting Monday)
/// - `selectedDate` highlights which day is selected
/// - `onDaySelected` called when user taps a pill
class ReservationCalendar extends StatelessWidget {
  final double width;
  final DateTime displayedDate;
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDaySelected;
  final Color backgroundColor;
  final Color pillSelectedColor;

  const ReservationCalendar({
    super.key,
    required this.displayedDate,
    required this.selectedDate,
    required this.onDaySelected,
    this.width = 373,
    this.backgroundColor = const Color(0xFF141414),
    this.pillSelectedColor = const Color(0xFF89E56F),
  });

  // return week starting Monday (7 items)
  List<DateTime> _weekFor(DateTime date) {
    final monday = date.subtract(Duration(days: date.weekday - 1));
    return List.generate(7, (i) => monday.add(Duration(days: i)));
  }

  static bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  @override
  Widget build(BuildContext context) {
    final week = _weekFor(displayedDate);

    return LayoutBuilder(builder: (context, constraints) {
      // usable width inside parent container
      final usableW = min(width, constraints.maxWidth.isFinite ? constraints.maxWidth : MediaQuery.of(context).size.width);
      const horizontalPad = 0.0; // parent already padded
      const itemGap = 8.0;

      final trackW = max(usableW - (horizontalPad * 2), 0.0);
      final totalGaps = itemGap * (week.length - 1);
      var slotW = (trackW - totalGaps) / week.length;
      slotW = slotW.isFinite ? slotW : 40.0;
      final capsuleW = slotW.clamp(28.0, 46.0);
      final capsuleH = (capsuleW * 1.45).clamp(36.0, 60.0);
      final radius = (capsuleW / 2).clamp(12.0, 24.0);

      // Compute container height so parent Expanded fits nicely
      final neededHeight = capsuleH + 4; // small vertical breathing room

      return SizedBox(
        height: neededHeight,
        child: Container(
          // background matches parent but keep this in case used standalone
          color: Colors.transparent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: trackW),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(week.length, (index) {
                  final dt = week[index];
                  final isWeekend = dt.weekday == DateTime.saturday || dt.weekday == DateTime.sunday;
                  final isSelected = _isSameDay(dt, selectedDate);

                  // Texts
                  final dayLabel = DateFormat('E').format(dt).substring(0, 1); // M T W ...
                  final dayNumber = dt.day.toString();

                  return Padding(
                    padding: EdgeInsets.only(right: index == week.length - 1 ? 0 : itemGap),
                    child: GestureDetector(
                      onTap: () => onDaySelected(dt),
                      child: SizedBox(
                        width: slotW,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: capsuleW,
                            height: capsuleH,
                            decoration: BoxDecoration(
                              color: isSelected ? pillSelectedColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(radius),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  dayLabel,
                                  style: TextStyle(
                                    color: isSelected ? PAppColors.white : (isWeekend ? Colors.redAccent : PAppColors.white),
                                    fontWeight: FontWeight.w600,
                                    fontSize: max(11.0, capsuleW * 0.28),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  dayNumber,
                                  style: TextStyle(
                                    color: isSelected ? PAppColors.white : (isWeekend ? Colors.redAccent : PAppColors.white),
                                    fontSize: max(13.0, capsuleW * 0.36),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      );
    });
  }
}
