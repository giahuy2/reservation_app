import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservation_app/pages/food_category/food_category_page.dart';
import 'package:reservation_app/pages/happy_deal/happy_deal_page.dart';
import 'package:reservation_app/pages/notfound/not_found_page.dart';
import 'package:reservation_app/pages/notification/notification_page.dart';
import 'package:reservation_app/pages/our_restaurant/our_restaurant_page.dart';
import 'package:reservation_app/routes/route_named.dart';

import '../pages/home/home_page.dart';
import '../pages/onboarding/on_ boarding_page.dart';

class RouteManager {
  static Route routeManager(RouteSettings settings) {
    switch (settings.name) {
      case RouteNamed.homePage:
        {
          return MaterialPageRoute(
            builder: (context) => HomePage(),
          );
        }
      case RouteNamed.onBoardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => OnBoardingPage(),
          );
        }
      case RouteNamed.notiPage:
        {
          return MaterialPageRoute(
            builder: (context) => NotificationPage(),
          );
        }
      case RouteNamed.foodCategoryPage:
        {
          return MaterialPageRoute(
            builder: (context) => FoodCategoryPage(),
          );
        }
      case RouteNamed.ourRestaurantPage:
        {
          return MaterialPageRoute(
            builder: (context) => OurRestaurantPage(),
          );
        }
      case RouteNamed.happyDealPage:
        {
          return MaterialPageRoute(
            builder: (context) => HappyDealPage(),
          );
        }
      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
