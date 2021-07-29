import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/sign_up.dart';
import 'package:myapp/welcomescreen.dart';
import './utils/colortheme.dart' as Appcolor;
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 130),
        child: Image(
          height: 300,
          width: 300,
          image: AssetImage('asset/onboarding9.png'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Text(
          'Online Shopping\n',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  ),
  Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 130),
        child: Image(
          height: 300,
          width: 300,
          image: AssetImage('asset/onboarding10.png'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Text(
          'Wide Range!\n',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  ),
  Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 130),
        child: Image(
          height: 300,
          width: 300,
          image: AssetImage('asset/onboarding11.png'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Text(
          'Delivery At Your Doorsteps!\n',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  ),
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
                controller: _controller,
                children: _pages,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                }),
          ),
          DotsIndicator(
            dotsCount: _pages.length,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Appcolor.lightyellow,
              ),
              child: Text(
                'Order Now!',
                style: GoogleFonts.montserrat(
                  color: Appcolor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Appcolor.blackish,
              ),
              child: Text(
                'Sign Up',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
