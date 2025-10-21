import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import '../../core/utils/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  final String nextLocation;

  const SplashScreen({super.key, this.nextLocation = '/adSetupScreen'});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      context.go(widget.nextLocation);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.darkBackground,

      // Body
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: Image.asset(PImages.logoPartner, width: 250)),

            // Loader at bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CircularProgressIndicator(
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    PAppColors.white,
                  ),
                  strokeWidth: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
