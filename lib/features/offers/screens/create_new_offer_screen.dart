import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/offers/widgets/add_item_widget.dart';
import 'package:partner_app/features/offers/widgets/info_configure_widget.dart';
import 'package:partner_app/features/offers/widgets/price_container.dart';
import 'package:partner_app/features/offers/widgets/stack_button.dart';
import 'package:partner_app/features/offers/widgets/step_indicator_widget.dart';

class CreateNewOfferScreen extends StatelessWidget {
  const CreateNewOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showBack: true, leadingTitle: AppStrings.addOffer),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
              child: SafeArea(
                child: Column(
                  children: [
                    StepIndicatorWidget(
                      currentStep: AppStrings.one,
                      nextStep: AppStrings.two,
                    ),
                    InfoConfigureWidget(
                      imagePath: PImages.clipBoard,
                      showDropdown: true,
                      onDropdown: () {},
                      title: AppStrings.category,
                    ),
                    SizedBox(height: PSizes.md),
                    _simpleContainer(
                      child: Center(
                        child: Container(
                          height: PSizes.textFieldHeight,
                          decoration: BoxDecoration(
                            color: PAppColors.black900,
                            borderRadius: BorderRadius.circular(
                              PSizes.borderRadiusLg,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: PSizes.lg,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.foodName,
                                  style: _w500(
                                    fontColor: PAppColors.black700,
                                    fontSize: PSizes.fontSizeMd,
                                  ),
                                ),
                                _dropDownButton(
                                  size: PSizes.iconLg2,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InfoConfigureWidget(
                      imagePath: PImages.handCash,
                      imageBackColor: PAppColors.warning300,
                      title: AppStrings.price,
                      child: PriceContainer(price: 0, onTap: () {}),
                    ),
                    InfoConfigureWidget(
                      imagePath: PImages.percentToken,
                      imageBackColor: PAppColors.purple500,
                      title: AppStrings.offerTypes,
                      child: Container(
                        height: PSizes.iconXLg,
                        width: PSizes.imageThumbSizeLg,
                        decoration: BoxDecoration(
                          color: PAppColors.black700,
                          borderRadius: BorderRadius.circular(
                            PSizes.borderRadiusLg,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.buyOneGetOneSm,
                                style: _w500(
                                  fontColor: PAppColors.white,
                                  fontSize: PSizes.fontSizeSm,
                                ),
                              ),
                              SizedBox(width: PSizes.xs),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: PAppColors.white,
                                size: PSizes.iconMd,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InfoConfigureWidget(
                      imagePath: PImages.fullPizza,
                      imageBackColor: PAppColors.light,
                      title: AppStrings.size,
                      child: Container(
                        height: PSizes.iconXLg,
                        width: PSizes.buttonWidthXSm,
                        decoration: BoxDecoration(
                          color: PAppColors.black700,
                          borderRadius: BorderRadius.circular(
                            PSizes.borderRadiusLg,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text(
                                  "S",
                                  style: _w500(
                                    fontColor: PAppColors.white,
                                    fontSize: PSizes.fontSizeMd,
                                  ),
                                ),
                              ),
                              SizedBox(width: PSizes.xs),
                              _dropDownButton(
                                size: PSizes.iconMd,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AddItemWidget(
                      mainHeading: AppStrings.addNewSize,
                      onAdd: () {},
                    ),
                    _simpleContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: PSizes.lg),
                              Text(
                                AppStrings.supplements,
                                style: _w500(
                                  fontColor: PAppColors.black700,
                                  fontSize: PSizes.fontSizeMd,
                                ),
                              ),
                              SizedBox(width: PSizes.md),
                              Text(
                                AppStrings.suggestions,
                                style: _w500(
                                  fontColor: PAppColors.light,
                                  fontSize: PSizes.fontSizeXESm,
                                ),
                              ),
                            ],
                          ),
                          PriceContainer(price: 0, onTap: () {}),
                        ],
                      ),
                    ),
                    AddItemWidget(
                      mainHeading: AppStrings.addSupplements,
                      onAdd: () {},
                    ),
                    SizedBox(height: PSizes.spaceBtwSectionsSm),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: StackButton(imagePath: PImages.next, onTap: ()=>context.push('/addOfferDetailScreen')),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle _w500({required Color fontColor, required double fontSize}) {
  return PAppStyles.poppins(
    color: fontColor,
    fontSize: fontSize,
    weight: FontWeight.w500,
  );
}

Widget _simpleContainer({required Widget child}) {
  return Container(
    height: PSizes.buttonHeightMd,
    decoration: BoxDecoration(
      color: PAppColors.black800,
      borderRadius: BorderRadius.circular(PSizes.borderRadiusXLg),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PSizes.mds),
      child: child,
    ),
  );
}

Widget _dropDownButton({required double size, required VoidCallback onTap}) {
  return Icon(
    Icons.keyboard_arrow_down_rounded,
    color: PAppColors.white,
    size: size,
  );
}
