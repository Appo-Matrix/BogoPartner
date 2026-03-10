import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';

import '../../../core/utils/common/widgets/app_bar_widget.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'add_offer_button.dart';
import 'add_offer_screen.dart';
import 'offer_items_list.dart';


class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.md),
            child: Column(
              children: [
                 SizedBox(height: 16),
          
          
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 24),
                  child:
                  AppBarWidgets(),
                ),
                 SizedBox(height: 20),
                AddOfferButton(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddOfferScreen()),);
                },),
          
          
          
          
                SizedBox(height: 20),
          
                /// ---------- OFFERS LIST ----------
                OfferItemsList(items: [OfferItems(price: '1000', leadingImage: PImages.pizza, title: 'Offer Name', subtitle:'Category Name', description: 'A unique, user-friendly experience, emotionally powerful carrying ...', time: '10', onGroup: () {
          
                }, onFamilies: () {
          
                }, onChildren: () {
          
                }, onMore: () {
          
                }, onNext: () {
          
                }, preTime: '',)],),
                SizedBox(height: 20),
                OfferItemsList(items: [OfferItems(price: '1000', leadingImage: PImages.pizza, title: 'Offer Name', subtitle:'Category Name', description: 'A unique, user-friendly experience, emotionally powerful carrying ...', time: '10', onGroup: () {
          
                }, onFamilies: () {
          
                }, onChildren: () {
          
                }, onMore: () {
          
                }, onNext: () {
          
                }, preTime: '00 D : 03 H : 33 M',)],),
                SizedBox(height: 20),
                OfferItemsList(items: [OfferItems(price: '1000', leadingImage: PImages.pizza, title: 'Offer Name', subtitle:'Category Name', description: 'A unique, user-friendly experience, emotionally powerful carrying ...', time: '10', onGroup: () {

                }, onFamilies: () {

                }, onChildren: () {

                }, onMore: () {

                }, onNext: () {

                }, preTime: '00 D : 03 H : 33 M',)],),
          
              ],
            ),
          ),
        ),
      )
    );

  }
}





