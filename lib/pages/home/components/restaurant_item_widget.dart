import 'package:flutter/material.dart';
import 'package:reservation_app/data/restaurant_model.dart';
import 'package:reservation_app/utils/assets_management.dart';

class RestaurantItemWidget extends StatelessWidget {
  const RestaurantItemWidget({super.key, required this.item});

  final RestaurantModel item;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          item.imageAddress,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Container(
            margin: const EdgeInsets.only(top: 80, left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  //widget 2.1
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //widget 2.3.1.1
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            item.name,
                          ),
                        ),

                        //widget 2.3.1.2
                        Text(
                          item.address,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(AssetsManagement.miniLogo)
                ],
              ),
            ))
      ],
    );
  }
}
