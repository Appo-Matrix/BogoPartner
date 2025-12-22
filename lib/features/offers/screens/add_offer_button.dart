import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/p_text.dart';

class AddOfferButton extends StatelessWidget {
  final VoidCallback? onTap;

  const AddOfferButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(PSizes.mi6),
        child: Container(
          width: PSizes.size380,
          height: PSizes.spaceBtwSectionsMd,
          decoration: BoxDecoration(
            color:  PAppColors.black800,
            borderRadius: BorderRadius.circular(PSizes.mi6),
            border: Border.all(
              color: PAppColors.white.withOpacity(0.1),
              width: PSizes.cursorWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: PSizes.mi14,
                height: PSizes.mi14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(PSizes.mi5),
                ),
                child:  Icon(
                  Icons.add,
                  color: Colors.black,
                  size:PSizes.borderRadiusLg ,
                ),
              ),
              SizedBox(height: PSizes.cardRadiusSm ),
               PText(
                'Add an offer',

                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
