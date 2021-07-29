import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/search.dart';
import '../utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SearchPage(),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: 45.0,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: kFixPadding),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Search',
                style: GoogleFonts.montserrat(
                  color: kLightColor,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
