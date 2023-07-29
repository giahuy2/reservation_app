import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Please stay here',
        )));
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6EFE8),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Color(0xFFF6EFE8),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xFFAD3F32),
              ),
              Text(
                'Dong Khoi St, District 1',
                style: TextStyle(
                    color: Color(0xFF483332),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.normal,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset('assets/icons/Search.png'),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset('assets/images/Banner.png');
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
