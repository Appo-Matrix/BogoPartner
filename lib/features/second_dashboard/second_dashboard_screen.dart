import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/payment/payments_screen.dart';
import 'package:partner_app/features/second_dashboard/setting/setting_screen.dart';
import 'package:partner_app/features/second_dashboard/shop/shop_screen.dart';
import 'package:partner_app/features/second_dashboard/widgets/bogo_bottom_nav_bar.dart';
import '../../core/utils/constants/app_assets.dart';
import '../../core/utils/constants/app_colors.dart';
import 'offer/offer_screen.dart';

class SecondDashboardScreen extends StatefulWidget {
  const SecondDashboardScreen({super.key});

  @override
  State<SecondDashboardScreen> createState() => _SecondDashboardScreenState();
}

class _SecondDashboardScreenState extends State<SecondDashboardScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  // App pages
  late final List<Widget> _pages = [
    const OfferScreen(key: PageStorageKey('home')),
    const PaymentsScreen(key: PageStorageKey('activity')),
    const SettingScreen(key: PageStorageKey('maps')),
    const ShopScreen(key: PageStorageKey('profile')),
  ];

  void _onTap(int index) {
    setState(() => _currentIndex = index);
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.easeInOut,
    );
  }

  void _onPageChanged(int index) => setState(() => _currentIndex = index);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: PAppColors.black1000,

      // extendBody: true,
      body: PageView(
        controller: _controller,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BogoBottomNavBar(
        currentIndex: _currentIndex,
        onItemSelected: _onTap,
        barHeight: 92,
        // barWidth: 394,
        cornerRadius: 46,
        indicatorDiameter: 60,
        indicatorOverlap: 26,
        notchRadiusExtra: 8,
        barColor: PAppColors.black1000,
        indicatorColor: PAppColors.primary,
        selectedColor: PAppColors.white,
        unselectedColor: PAppColors.lightGray400,
        items: [
          BogoNavItem(asset: PImages.pub, label: 'Offers'),
          BogoNavItem(asset: PImages.pub, label: 'Offers'),
          BogoNavItem(asset: PImages.pub, label: 'Booking'),
          BogoNavItem(asset: PImages.pub, label: 'Pub'),
        ],
      ),
    );
  }
}
