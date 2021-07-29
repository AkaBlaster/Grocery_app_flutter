import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/main_page.dart';

import './utils/constants.dart';
import './utils/colortheme.dart' as Appcolor;

class Categoryview extends StatelessWidget {
  final int column, items;
  final Widget child;
  final Color color;
  final direction, itemBuilder;
  const Categoryview({
    Key key,
    this.column,
    this.items,
    this.child,
    this.color,
    this.direction,
    this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 25),
            child: Text(
              'Choose Topics ',
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Text(
              'you can choose topics and we have\nsuggest suitable products for you',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: color,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                itemCount: items,
                itemBuilder: itemBuilder),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPaige()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Appcolor.lightyellow,
              ),
              child: Text(
                'Next',
                style: GoogleFonts.montserrat(
                  color: Appcolor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
