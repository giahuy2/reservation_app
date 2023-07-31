import 'package:flutter/material.dart';
import 'package:reservation_app/data/food_infor_model.dart';
import 'package:reservation_app/utils/app_color.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({super.key, required this.item});

  final FoodInfoModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
              child: Image.asset(item.imageAddress, fit: BoxFit.cover,)),
          SizedBox(height: 5,),
          Text(
            item.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColor.brown,
              ),
              Text(
                item.restaurantAddress,
                style: TextStyle(
                    color: AppColor.brown,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: AppColor.red_1,
              ),
              child: const Text('Reserve',),
            ),
          )
        ],
      ),
    );
  }
}
