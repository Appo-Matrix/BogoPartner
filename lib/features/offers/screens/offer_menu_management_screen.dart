import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/offers/widgets/add_button_container.dart';
import 'package:partner_app/features/offers/widgets/offer_button.dart';
import 'package:partner_app/features/offers/widgets/product_widget.dart';

class OfferMenuManagementScreen extends StatelessWidget {
  const OfferMenuManagementScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            isActive: true,
                            count: 20,
                            title: AppStrings.offer,
                            onTap: () =>
                                context.go('/offerMenuManagementScreen'),
                          ),
                          OfferButton(
                            imagePath: PImages.clipBoard,
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
                  onTap: () => context.push('/createNewOfferScreen'),
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductWidget(
                  productImage: PImages.custer,
                  productTitle: "Product name",
                  onEdit: () {},
                  showBuyOne: true,
                  onBuyOne: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 2000,
                  availableProducts: AppStrings.availableFoods,
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
                  child: Text(
                    AppStrings.menu,
                    style: PAppStyles.heading1.copyWith(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeLgx,
                    ),
                  ),
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showBuyOne: true,
                  onBuyOne: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 2000,
                  availableProducts: AppStrings.availableFoods,
                ),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showBuyOne: true,
                  onBuyOne: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 2000,
                  availableProducts: AppStrings.availableFoods,
                ),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 2000,
                  availableProducts: AppStrings.availableFoods,
                ),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 3000,
                  availableProducts: AppStrings.availableFoods,
                ),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showGetOne: true,
                  onGetOne: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 3000,
                  availableProducts: AppStrings.availableFoods,
                ),
                ProductWidget(
                  productImage: PImages.hotel12,
                  productTitle: "Product name",
                  onEdit: () {},
                  showNotIncluded: true,
                  onNotIncluded: () {},
                  size: "s",
                  onSize: () {},
                  onSupplements: () {},
                  price: 3000,
                  availableProducts: AppStrings.availableFoods,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
