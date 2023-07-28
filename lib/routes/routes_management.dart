import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservation_app/pages/notfound/not_found_page.dart';
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
      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
