import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';

class ReportAbuseDialog {
  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (context, anim1, anim2) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Center(
            child: Container(
              height: 222,
              width: 380,
              decoration: BoxDecoration(
                color: PAppColors.black800,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Do you really want to report abuse on the author of this comment?",
                      textAlign: TextAlign.center, // ✅ Center text horizontally
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: PAppColors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const SizedBox(height: 35),

                    // Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // No Button
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 86,
                            width: 161,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "No",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),

                        const Spacer(),

                        // Yes Button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 86,
                            width: 161,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Yes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
