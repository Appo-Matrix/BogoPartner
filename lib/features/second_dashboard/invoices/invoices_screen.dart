import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/features/second_dashboard/invoices/widgets/list_tile.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../offer/widgets/p_date_range_card.dart';

class InvoicesScreen extends StatefulWidget {
  const InvoicesScreen({super.key});

  @override
  State<InvoicesScreen> createState() => _InvoicesScreenState();
}

class _InvoicesScreenState extends State<InvoicesScreen> {
  int _currentPage = 1;
  final int _itemsPerPage = 5;

  final List<Map<String, String>> _invoices = List.generate(15, (index) {
    return {
      'image': PImages.partner,
      'title': 'Bogo to commerce',
      'date': '12/${(index % 12) + 1}/2023',
      'icon': PImages.download,
    };
  });

  List<Map<String, String>> get _paginatedInvoices {
    final start = (_currentPage - 1) * _itemsPerPage;
    final end = start + _itemsPerPage;
    return _invoices.sublist(start, end > _invoices.length ? _invoices.length : end,);
  }

  void _nextPage() {
    if (_currentPage * _itemsPerPage < _invoices.length) {
      setState(() => _currentPage++);
    }
  }

  void _prevPage() {
    if (_currentPage > 1) {
      setState(() => _currentPage--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(showTitle: false, showBackIcon: true),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(PImages.partner, width: 125)],
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PDateRangeCard(
                  startDate: "01/05/2023",
                  endDate: "01/05/2023",
                  centerIcon: Icons.swap_horiz,
                  radius: 25,
                  borderColor: PAppColors.black900,
                  containerColor: PAppColors.black1000,
                ),
              ],
            ),

            const SizedBox(height: 15),

            Expanded(
              child: Column(
                children: [
                  ..._paginatedInvoices.map((invoice) {
                    return PListTile(
                      image: invoice['image']!,
                      title: invoice['title']!,
                      date: invoice['date']!,
                      actionIcon: invoice['icon']!,
                    );
                  }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _prevPage,
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    _currentPage.toString().padLeft(2, '0'),
                    style: PAppStyles.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: _nextPage,
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
