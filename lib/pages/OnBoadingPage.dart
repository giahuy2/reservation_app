import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_app/pages/components/Carousel_widget.dart';
import 'package:reservation_app/pages/home_page.dart';

class OnBoadingPage extends StatefulWidget {
  const OnBoadingPage({super.key});

  @override
  State<OnBoadingPage> createState() => _OnBoadingPageState();
}

class _OnBoadingPageState extends State<OnBoadingPage> {
  var _curPageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset('assets/images/Logo.png'),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _curPageIndex = value;
                  });
                },
                children: const [
                  CarouselWidget(
                      image: 'assets/images/Tracking_Maps.png',
                      title: 'Nearby restaurants',
                      description:
                          'Don\'t have to go far to find a good restaurant'),
                  CarouselWidget(
                      image: 'assets/images/Order_illustration.png',
                      title: 'Convenient',
                      description: 'Online dish reservation'),
                  CarouselWidget(
                      image: 'assets/images/Safe_Food.png',
                      title: 'Delicious',
                      description: 'Enjoy great food with your family'),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 26.0, right: 26.0, bottom: 18.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'SKIP',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF4B5563),
                          ),
                        ),
                      ),
                      IconButton(
                        color: const Color(0xFF999999),
                        onPressed: () {
                          switch (_curPageIndex) {
                            case 0:
                              _pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            case 1:
                              _pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            default:
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                          }
                        },
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                        ),
                      ),
                    ],
                  ),
                  buildDot(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildDotSeleted(context, _curPageIndex == 0),
        SizedBox(
          width: 8,
        ),
        buildDotSeleted(context, _curPageIndex == 1),
        SizedBox(
          width: 8,
        ),
        buildDotSeleted(context, _curPageIndex == 2),
      ],
    );
  }

  Widget buildDotSeleted(BuildContext context, bool isSelected) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFAD3F32) : Colors.grey,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
