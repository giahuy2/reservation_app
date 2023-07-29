import 'package:flutter/material.dart';
import 'package:reservation_app/utils/app_color.dart';

class BestSellerSection extends StatefulWidget {
  const BestSellerSection({super.key});

  @override
  State<BestSellerSection> createState() => _BestSellerSectionState();
}

class _BestSellerSectionState extends State<BestSellerSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Seller',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.brown,
              ),),
              Row(
                children: [
                  Text('See all',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                  ),),
                  Icon(Icons.arrow_forward_ios,size: 12,color:Color(0xff999999) ,),
                ],
              ),
            ],
          ),
          Column(
            
          ),
        ],
      ),
    );
  }
}
