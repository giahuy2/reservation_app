import 'package:flutter/material.dart';
import 'package:reservation_app/data/restaurant_model.dart';
import 'package:reservation_app/pages/home/components/header_section.dart';
import 'package:reservation_app/pages/home/components/restaurant_item_widget.dart';
import 'package:reservation_app/routes/route_named.dart';

class OurRestaurantSection extends StatelessWidget {
  const OurRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: HeaderSection(
            title: 'Our restaurant',
            onTapSeeAll: () {
              Navigator.pushNamed(context, RouteNamed.ourRestaurantPage);
            },
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemBuilder: (context, index) {
              return RestaurantItemWidget(item: restaurantListMockData[index]);
            },
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: restaurantListMockData.length < 3
                ? restaurantListMockData.length
                : 3,
          ),
        )
      ],
    );
  }
}
