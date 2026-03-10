import 'package:flutter/material.dart';

class PAnalyticsCard extends StatelessWidget {
  const PAnalyticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

      // 🔥 Horizontal scroll view added
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // for smooth scrolling
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMetricCard(
              color: Colors.deepPurple,
              title: "Page Views",
              value: "15",
              progress: 0.6,
            ),

            _buildDivider(),

            _buildMetricCard(
              color: Colors.pinkAccent,
              title: "Favorite",
              value: "25",
              progress: 0.4,
            ),

            _buildDivider(),

            _buildMetricCard(
              color: Colors.lightBlueAccent,
              title: "XP Activate",
              value: "00",
              progress: 0.3,
            ),

            _buildDivider(),

            _buildMetricCard(
              color: Colors.orangeAccent,
              title: "Loyalty Activate",
              value: "02",
              progress: 0.5,
            ),
          ],
        ),
      ),
    );
  }

  // Divider between metrics
  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 11),
      width: 1,
      height: 60,
      color: Colors.grey.shade800,
    );
  }

  // Metric item
  Widget _buildMetricCard({
    required Color color,
    required String title,
    required String value,
    required double progress,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 4,
              backgroundColor: Colors.grey.shade800,
              valueColor: AlwaysStoppedAnimation(color),
            ),
          ),
        ),
      ],
    );
  }
}
