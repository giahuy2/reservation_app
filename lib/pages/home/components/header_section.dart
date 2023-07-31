import 'package:flutter/material.dart';
import 'package:reservation_app/utils/app_color.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.title, required this.onTapSeeAll});


  final String title;
  final VoidCallback onTapSeeAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.brown,
          ),
        ),
        InkWell(
          onTap: () => onTapSeeAll.call(),
          child: Row(
            children: [
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grey,
                ),
              ),
              SizedBox(width: 6,),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Color(0xff999999),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
