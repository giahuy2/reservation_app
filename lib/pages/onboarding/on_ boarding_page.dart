import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_app/routes/route_named.dart';
import 'package:reservation_app/utils/storage_key_management.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/Carousel_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _curPageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _onNavigatorToHome(BuildContext context)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageKeyManager.isShownOnBoarding, true);

    if(mounted){
      Navigator.pushReplacementNamed(
          context, RouteNamed.homePage);
    }
    //mounted: kiểm ttra trạng thái tồn tại của OnBoarding
    //nếu đã tồn tại sẽ vào home luôn
}
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
                          _onNavigatorToHome(context);
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
                              _onNavigatorToHome(context);
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
