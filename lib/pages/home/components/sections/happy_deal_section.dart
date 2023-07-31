import 'package:flutter/material.dart';
import 'package:reservation_app/data/discount_info_model.dart';
import 'package:reservation_app/pages/home/components/happy_deal_item_widget.dart';
import 'package:reservation_app/pages/home/components/header_section.dart';
import 'package:reservation_app/routes/route_named.dart';

class HappyDealSection extends StatelessWidget {
  const HappyDealSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: HeaderSection(
          title: 'Happy Deals',
          onTapSeeAll: () {
            Navigator.pushNamed(context, RouteNamed.happyDealPage);

          },
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 24.0, top: 10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).width / 2.5,
          child: ListView.separated(
            padding: EdgeInsets.only(right: 24),
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HappyDealItemWidget(
                item: discountListMockData[index],index: index,
              );
            },
            shrinkWrap: true,
            itemCount: discountListMockData.length < 5
                ? discountListMockData.length
                : 5,
          ),
        ),
      ),
    ]);
  }
}
