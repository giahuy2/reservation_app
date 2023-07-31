import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reservation_app/routes/route_named.dart';
import 'package:reservation_app/routes/routes_management.dart';
import 'package:reservation_app/utils/storage_key_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //chắc chắn rằng cầu nối giữa SDK và native được khởi tạo thành coong
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final bool? isShownOnBoarding =
      prefs.getBool(StorageKeyManager.isShownOnBoarding);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //khóa xoay màn hình
  runApp(MyApp(isShownOnBoarding: isShownOnBoarding));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isShownOnBoarding});

  final bool? isShownOnBoarding;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: isShownOnBoarding == true
          ? RouteNamed.homePage
          : RouteNamed.onBoardingPage,
      onGenerateRoute: (settings) => RouteManager.routeManager(settings),
    );
  }
}
