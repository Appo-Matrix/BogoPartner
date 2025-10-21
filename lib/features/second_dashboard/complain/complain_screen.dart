import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/complain/widgets/complain_reason_slector.dart';
import 'package:partner_app/features/second_dashboard/complain/widgets/complain_text_field.dart';
import '../../../core/utils/common/Primary_button.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_colors.dart';

class ComplainScreen extends StatefulWidget {
  const ComplainScreen({super.key});

  @override
  State<ComplainScreen> createState() => _ComplainScreenState();
}

class _ComplainScreenState extends State<ComplainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: BogoAppBar(
        title: "",
        showTitle: false,
        showBackIcon: true,
        showActions: false,
        actionText: "",
        onActionTap: () {},
        onBackPressed: () {},
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            ComplaintReasonSelector(
              title: "Complaint Reason",
              onTap: () {
                // open dropdown / dialog / bottom sheet
              },
            ),

            const SizedBox(height: 15),

            ComplaintTextField(
              title: "Complaint Details",
              hintText: "Write a description of no more than 100 words",
              onTap: () {
                // optional tap action
              },
            ),

            const SizedBox(height: 60),

            PrimaryButton(
              text: "Send",
              width: double.infinity,
              height: 92,
              onTap: () {
                // context.go("/addOptionScreen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
