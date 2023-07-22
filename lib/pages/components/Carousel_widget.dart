import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 6, child: Image.asset(image)),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF483232)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                description,
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF483232)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
