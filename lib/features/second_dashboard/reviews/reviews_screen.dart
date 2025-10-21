import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/reviews/widgets/comment_text_field.dart';
import 'package:partner_app/features/second_dashboard/reviews/widgets/custom_dialog_box.dart';
import 'package:partner_app/features/second_dashboard/reviews/widgets/star_rating.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_styles.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: BogoAppBar(
        title: "Client Details",
        showTitle: false,
        showBackIcon: true,
        showActions: true,
        actionText: "Archive",
        onActionTap: () {},
        onBackPressed: () {},
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 265,
              width: double.infinity,
              decoration: BoxDecoration(
                color: PAppColors.black900,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 69,
                          width: 69,
                          decoration: BoxDecoration(
                            color: PAppColors.black1000,
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Center(child: Image.asset(PImages.image)),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15),

                            Text(
                              "AZIR DESATURATES",
                              style: PAppStyles.poppins(
                                color: PAppColors.white,
                                fontSize: 16,
                                weight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 10),
                            StaticStarRating(
                              rating: 4,
                              filledStarAsset: PImages.gold,
                              emptyStarAsset: PImages.star,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 92,
                              decoration: BoxDecoration(
                                color: PAppColors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    ReportAbuseDialog.show(context);
                                  },
                                  child: Text(
                                    "Report Abuse",
                                    style: PAppStyles.poppins(
                                      color: PAppColors.white,
                                      fontSize: 14,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 15),
                    Text(
                      "I bought it 3 weeks ago and now come back just to say “Awesome”I really enjoy it.",
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 16,
                        weight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),

                    SizedBox(height: 15),

                    CommentInputField(
                      hintText: "write a comment",
                      sendIconAsset: PImages.sends,
                      onSend: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
