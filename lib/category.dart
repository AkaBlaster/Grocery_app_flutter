// ignore: file_names
import 'package:myapp/widgets/categoryItems.dart';
import 'package:myapp/categoryView.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Category();
  }
}

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Categoryview(
        direction: Axis.vertical,
        items: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItems(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            paddingHorizontal: 0.0,
            paddingVertical: 0.0,
            align: Alignment.center,
            image: categoryList[index].image,
            title: categoryList[index].category,
            titleSize: 20.0,
            amount: "",
            amountSize: 0.0,
          );
        },
      ),
    );
  }
}
