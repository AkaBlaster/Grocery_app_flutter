import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/homePageView.dart';
import 'package:myapp/main_widgets/header.dart';
import './utils/constants.dart';
import 'package:myapp/widgets/searchBar.dart';

class MainPaige extends StatelessWidget {
  final String image, description;
  const MainPaige({
    Key key,
    this.image,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPage(),
            SearchBar(),

            //For Scrollable Containers Horizontal
            HomePageView(),
          ],
        ),
      ),
    );
  }
}
