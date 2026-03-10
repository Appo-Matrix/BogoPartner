import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomersChartRow extends StatelessWidget {
  const CustomersChartRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _CustomersByAgeChart(),
        _CustomersByGenderChart(),
      ],
    );
  }
}

//
// ─── CUSTOMERS BY AGE BAR CHART ─────────────────────────────────────────────
//
class _CustomersByAgeChart extends StatelessWidget {
  const _CustomersByAgeChart();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 170,
      decoration: BoxDecoration(
        color: PAppColors.darkGray750,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Customers by age",
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: 16,
              weight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: 3,
            width: 60,
            color: PAppColors.gray600,
            margin: const EdgeInsets.only(bottom: 12),
          ),

          // Bar Chart
          Expanded(
            child: BarChart(
              BarChartData(
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 25,
                      getTitlesWidget: (v, _) => Text(
                        v.toInt().toString(),
                        style: PAppStyles.poppins(
                          color: PAppColors.gray400,
                          fontSize: 10,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (v, _) {
                        switch (v.toInt()) {
                          case 0:
                            return Text(
                              '15–30',
                              style: PAppStyles.poppins(
                                color: PAppColors.gray200,
                                fontSize: 10,
                                weight: FontWeight.w400,
                              ),
                            );
                          case 1:
                            return Text(
                              '30–45',
                              style: PAppStyles.poppins(
                                color: PAppColors.gray200,
                                fontSize: 10,
                                weight: FontWeight.w400,
                              ),
                            );
                          case 2:
                            return Text(
                              '45+',
                              style: PAppStyles.poppins(
                                color: PAppColors.gray200,
                                fontSize: 10,
                                weight: FontWeight.w400,
                              ),
                            );
                          default:
                            return const SizedBox();
                        }
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(
                      toY: 80,
                      color: PAppColors.success400,
                      width: 20,
                    ),
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                      toY: 30,
                      color: PAppColors.info500,
                      width: 20,
                    ),
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                      toY: 15,
                      color: PAppColors.error400,
                      width: 20,
                    ),
                  ]),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),
          const _Legend(
            label: "15–30",
            color: PAppColors.success400,
            percent: "73%",
          ),
          const _Legend(
            label: "30–45",
            color: PAppColors.info500,
            percent: "15%",
          ),
          const _Legend(
            label: "45+",
            color: PAppColors.error400,
            percent: "13%",
          ),
        ],
      ),
    );
  }
}

//
// ─── CUSTOMERS BY GENDER PIE CHART ───────────────────────────────────────────
//
class _CustomersByGenderChart extends StatelessWidget {
  const _CustomersByGenderChart();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 170,
      decoration: BoxDecoration(
        color: PAppColors.darkGray750,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Customers by gender",
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: 16,
              weight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: 3,
            width: 60,
            color: PAppColors.gray600,
            margin: const EdgeInsets.only(bottom: 12),
          ),

          // Pie Chart
          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      startDegreeOffset: 270,
                      sectionsSpace: 2,
                      centerSpaceRadius: 40,
                      sections: [
                        PieChartSectionData(
                          color: PAppColors.info400,
                          value: 73,
                          radius: 40,
                        ),
                        PieChartSectionData(
                          color: PAppColors.error400,
                          value: 27,
                          radius: 40,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "100%",
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 16,
                      weight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),
          const _Legend(
            label: "Men",
            color: PAppColors.info400,
            percent: "73%",
          ),
          const _Legend(
            label: "Women",
            color: PAppColors.error400,
            percent: "27%",
          ),
        ],
      ),
    );
  }
}

//
// ─── REUSABLE LEGEND WIDGET ─────────────────────────────────────────────
//
class _Legend extends StatelessWidget {
  final String label;
  final Color color;
  final String percent;

  const _Legend({
    required this.label,
    required this.color,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              label,
              style: PAppStyles.poppins(
                color: PAppColors.gray300,
                fontSize: 10,
                weight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            percent,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: 11,
              weight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
