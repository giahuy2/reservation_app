import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:reservation_app/pages/home/components/banner_carousel.dart';
import 'package:reservation_app/pages/home/components/sections/best_seller_section.dart';
import 'package:reservation_app/pages/home/components/sections/happy_deal_section.dart';
import 'package:reservation_app/pages/home/components/sections/our_restaurant_section.dart';
import 'package:reservation_app/utils/app_color.dart';

import '../../components/indicator_carousel.dart';
import 'components/home_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Please stay here',
        )));
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6EFE8),
        appBar: HomeAppbar(),
        drawer: Drawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: AppColor.grey,
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/images/icons/Search.png'),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BannerCarousel(),
                SizedBox(
                  height: 14,
                ),
                BestSellerSection(),
                SizedBox(
                  height: 18,
                ),
                OurRestaurantSection(),
                SizedBox(
                  height: 18,
                ),
                HappyDealSection(),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
