import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/offers/widgets/add_button_container.dart';
import 'package:partner_app/features/offers/widgets/offer_button.dart';
import 'package:partner_app/features/offers/widgets/product_info_widget.dart';
import 'package:partner_app/features/offers/widgets/text_in_capsule.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(
        showDrawer: true,
        onDrawer: () {},
        showNotification: true,
        onNotification: () {},
        showInfo: true,
        onInfo: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: PSizes.spaceBtwItems),
                Center(
                  child: SizedBox(
                    width: PSizes.size380,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OfferButton(
                            imagePath: PImages.chef,
                            count: 20,
                            title: AppStrings.offer,
                            onTap: () =>
                                context.go('/offerMenuManagementScreen'),
                          ),
                          OfferButton(
                            imagePath: PImages.clipBoard,
                            isActive: true,
                            count: 03,
                            title: AppStrings.category,
                            onTap: () => context.go('/addCategoryScreen'),
                          ),
                          OfferButton(
                            imagePath: PImages.setting,
                            title: AppStrings.preparations,
                            onTap: () => context.go('/editOfferScreen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: PSizes.spaceBtwItems),
                AddButtonContainer(
                  buttonTitle: AppStrings.addOffer,
                  onTap: ()=>context.push('/createNewOfferScreen'),
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.burger,
                  showEdit: true,
                  onEdit: () {},
                  children: [
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                  ],
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.pizza,
                  showEdit: true,
                  onEdit: () {},
                  children: [
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                  ],
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.drinks,
                  showEdit: true,
                  onEdit: () {},
                  children: [
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                    TextInCapsule(text: AppStrings.productName, onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
