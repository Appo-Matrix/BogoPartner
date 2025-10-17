import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/registration/widget/input_field.dart';
import '../../../core/utils/common/Primary_button.dart';
import '../../../core/utils/common/bogo_app_bar.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(showTitle: false, showBackIcon: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(PImages.partner, width: 125)],
              ),

              SizedBox(height: 15),

              // Name
              PInputField(
                leadingIcon: PImages.name,
                actionIcon: PImages.edits,
                hintText: "Company Name",
              ),

              SizedBox(height: 10),

              PInputField(
                leadingIcon: PImages.names,
                actionIcon: PImages.edits,
                hintText: "Full Name",
              ),

              SizedBox(height: 10),

              PInputField(
                leadingIcon: PImages.email,
                actionIcon: PImages.edits,
                hintText: "Company Email",
              ),

              SizedBox(height: 10),

              PInputField(
                leadingIcon: PImages.phone,
                actionIcon: PImages.edits,
                hintText: "Company Phone Number",
              ),

              SizedBox(height: 10),

              PInputField(
                leadingIcon: PImages.lock,
                actionIcon: PImages.edits,
                hintText: "Password",
              ),

              SizedBox(height: 45),

              PrimaryButton(
                text: "Continue",
                width: double.infinity,
                height: 92,
                onTap: () {
                  // context.go("/addOptionScreen");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
