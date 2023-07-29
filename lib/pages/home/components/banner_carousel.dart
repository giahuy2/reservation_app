import 'package:flutter/material.dart';
import 'package:reservation_app/components/indicator_carousel.dart';
import 'package:reservation_app/utils/assets_management.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final _banner = [
    Image.asset(
      AssetsManagement.bannerPath,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      AssetsManagement.bannerPath,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      AssetsManagement.bannerPath,
      fit: BoxFit.fitWidth,
    ),
  ];

  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: PageView(
              children: _banner,
              onPageChanged: (value) {
                setState(() {
                  _curIndex = value;
                });
              },
            ),
          ),
        ),
        IndicatorCarousel(
          curPageIndex: _curIndex,
          length: _banner.length,
        ),
      ],
    );
  }
}
