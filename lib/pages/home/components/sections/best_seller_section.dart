import 'package:flutter/material.dart';
import 'package:reservation_app/data/food_infor_model.dart';
import 'package:reservation_app/pages/home/components/food_item_widget.dart';
import 'package:reservation_app/pages/home/components/header_section.dart';
import 'package:reservation_app/routes/route_named.dart';

class BestSellerSection extends StatefulWidget {
  const BestSellerSection({super.key});

  @override
  State<BestSellerSection> createState() => _BestSellerSectionState();
}

class _BestSellerSectionState extends State<BestSellerSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: HeaderSection(
            title: 'Best Seller',
            onTapSeeAll: () {
              Navigator.pushNamed(context, RouteNamed.foodCategoryPage);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.0, top: 10),
          child: SizedBox(
            height: 260,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 24),
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FoodItemWidget(
                  item: foodInfoListMockData[index],
                );
              },
              shrinkWrap: true,
              itemCount: foodInfoListMockData.length < 5
                  ? foodInfoListMockData.length
                  : 5,
            ),
          ),
        ),
      ],
    );
  }
}
