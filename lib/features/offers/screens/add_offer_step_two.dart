

import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/p_text.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/step_pill.dart';
import 'image_upload_section.dart';
import 'next_button.dart';
class AddOfferStepTwo extends StatefulWidget {
  const AddOfferStepTwo({super.key});

  @override
  State<AddOfferStepTwo> createState() => _AddOfferStepTwoState();
}

class _AddOfferStepTwoState extends State<AddOfferStepTwo> {
  int step = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(title: 'Add an offer'),
                SizedBox(height: PSizes.fontSizeUMdLg),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StepPill(label: 'Step One', active: step == 1),
                    SizedBox(width: PSizes.sm),
                    Row(children: List.generate(5, (i) => dot(i == 4))),
                    SizedBox(width: PSizes.sm),
                    StepPill(label: 'Step Two', active: step == 1),
          
                  ],
                ),
                SizedBox(height: 40,),
                ImageUploadSection(),
                SizedBox(height: 30),
                DescriptionField(),
                SizedBox(height: 15,),
                WarningBox(),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    NextButton(onPressed: (){})
                  ])
                
              ],
            )
          ),
        ),
      )


    );
  }
}
Widget dot(bool active) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: PSizes.xs),
  child: Icon(
    Icons.circle,
    size:PSizes.sm,
    color: active ? PAppColors.primary : PAppColors.black600,
  ),
);







class WarningBox extends StatelessWidget {
  const WarningBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 384, // from your provided size
        height: 129, // from your provided size
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color:  PAppColors.error600, // orange warning color
          borderRadius: BorderRadius.circular(22.15), // matches figma radius
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning_amber_rounded,
                    color: Colors.white, size: 22),
                SizedBox(width: 8),
                Text(
                  "Important warning",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: PText(
                "The BOGO team has the right to modify your offer to serve your project and be in line with the quality of the application.",

                  color: PAppColors.white,
                  fontSize: 13,
                fontWeight: FontWeight.w500,


              ),
            ),
          ],
        ),
      ),
    );
  }
}







class DescriptionField extends StatelessWidget {
  final TextEditingController? controller;

  const DescriptionField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 512,
      left: 22,
      child: Container(
        width: 384,
        height: 99,
        decoration: BoxDecoration(
          color: const Color(0xFF1C1C1C),
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          style:  TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            hintText: 'write description',
            hintStyle:  TextStyle(
              color: Colors.white38,
              fontSize: 14,
            ),
            contentPadding:  EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            border: InputBorder.none,
          ),
          cursorColor: Colors.white70,
        ),
      ),
    );
  }
}


