import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class ClientsPerHourChart extends StatelessWidget {
  const ClientsPerHourChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: PAppColors.darkGray750,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nombre de clients par heure",
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),

            // Chart area
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 10,
                  alignment: BarChartAlignment.spaceAround,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),

                  titlesData: FlTitlesData(
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        getTitlesWidget: (value, meta) {
                          const labels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
                          if (value.toInt() >= 0 && value.toInt() < labels.length) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                labels[value.toInt()],
                                style: PAppStyles.poppins(
                                  color: PAppColors.gray300,
                                  fontSize: 12,
                                  weight: FontWeight.w400,
                                ),
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                    bottomTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),

                  barGroups: _chartGroups(),
                  groupsSpace: 18,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Time labels row (bottom)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _timeLabel("09 AM"),
                _timeLabel("12 PM"),
                _timeLabel("03 PM"),
                _timeLabel("06 PM"),
                _timeLabel("09 PM"),
                _timeLabel("12 AM"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _timeLabel(String text) {
    return Text(
      text,
      style: PAppStyles.poppins(
        color: PAppColors.gray400,
        fontSize: 12,
        weight: FontWeight.w400,
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    final data = [
      [3.0, PAppColors.orange400],
      [7.0, PAppColors.success400],
      [6.0, PAppColors.warning50],
      [8.0, PAppColors.primary400],
      [9.0, PAppColors.success500],
      [4.0, PAppColors.orange500],
    ];

    return List.generate(data.length, (i) {
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: data[i][0] as double,
            color: data[i][1] as Color,
            width: 22,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      );
    });
  }
}
