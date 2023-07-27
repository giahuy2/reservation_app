import 'package:flutter/material.dart';
import 'package:reservation_app/pages/OnBoadingPage.dart';
import 'package:reservation_app/pages/home_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      onGenerateRoute: (settings) {
        switch(settings.name){
          case 'HomePage':{
            return MaterialPageRoute(builder: (context) => HomePage(),);
          }
          case 'OnBoadingPage':{
            return MaterialPageRoute(builder: (context) => OnBoadingPage(),);
          }
        }
        return null;
      },
    );
  }
}

