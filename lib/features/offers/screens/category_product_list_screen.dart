import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/common/widgets/custom_text_field.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/offers/widgets/add_product_widget.dart';

class CategoryProductListScreen extends StatelessWidget {
  const CategoryProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showDrawer: true, onDrawer: () {}),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: PSizes.lg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  hintText: AppStrings.categoryName,
                  hintTextColor: PAppColors.black500,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  hintText: AppStrings.categoryName,
                  hintTextColor: PAppColors.black600,
                  prefixIcon: PImages.search,
                  fillColor: PAppColors.black900,
                  controller: TextEditingController(),
                ),
                AddProductWidget(
                  productImage: PImages.custer,
                  productTitle: AppStrings.productName,
                  onTap: () {},
                ),
                AddProductWidget(
                  productImage: PImages.custer,
                  productTitle: AppStrings.productName,
                  onTap: () {},
                ),
                AddProductWidget(
                  productImage: PImages.custer,
                  productTitle: AppStrings.productName,
                  onTap: () {},
                ),
                AddProductWidget(
                  productImage: PImages.custer,
                  productTitle: AppStrings.productName,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
