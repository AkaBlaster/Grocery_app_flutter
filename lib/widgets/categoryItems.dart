import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class CategoryItems extends StatelessWidget {
  final double height,
      width,
      radius,
      titleSize,
      amountSize,
      paddingHorizontal,
      paddingVertical;
  final String image, title, amount;
  final Color color, lblColor;
  final align, blendMode;
  const CategoryItems({
    Key key,
    this.height,
    this.width,
    this.radius,
    this.titleSize,
    this.image,
    this.title,
    this.color,
    this.align,
    this.amount,
    this.lblColor,
    this.blendMode,
    this.amountSize,
    this.paddingHorizontal,
    this.paddingVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 10,
            ),
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ]),
    );
  }
}
