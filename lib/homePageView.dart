import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/constants.dart';

class HomePageView extends StatelessWidget {
  final int items;
  final direction, itemBuilder;

  const HomePageView({
    Key key,
    this.direction,
    this.items,
    this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: index == 0
                        ? Colors.red
                        : index == 1
                            ? Colors.brown
                            : Colors.green,
                    image: DecorationImage(
                      image: AssetImage(cardList[index].image),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomRight,
                    ), // Yellow
                  ),
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, bottom: 10),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              cardList[index].description,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, bottom: 20),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '20% Discount',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
