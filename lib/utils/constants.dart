import 'package:flutter/cupertino.dart';
import 'package:myapp/modals/cardModal.dart';
import '../modals/categoryModal.dart';

const KPageViewTextStyle = TextStyle(
  fontSize: 24,
);

const kPrimaryColor = Color(0xFFFF8084);
const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;

const kHeadTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

final categoryList = [
  CategoryModal(image: "asset/Fish.png", category: "Fish", discount: 10),
  CategoryModal(image: "asset/Meat.png", category: "Meat", discount: 10),
  CategoryModal(image: "asset/Bread.png", category: "Bread", discount: 10),
  CategoryModal(
      image: "asset/Milk.png", category: "Bottle of Milk", discount: 10),
  CategoryModal(image: "asset/Tomato.png", category: "Tomato", discount: 10),
  CategoryModal(
      image: "asset/Chips.png", category: "Bag of Chips", discount: 10),
  CategoryModal(image: "asset/Banana.png", category: "Banana", discount: 10),
  CategoryModal(image: "asset/Carrot.png", category: "Carrots", discount: 10),
];

final cardList = [
  CardModal(
    image: "asset/product2.png",
    description: "Fresh Meat",
  ),
  CardModal(image: "asset/product3.png", description: "Bakery Products"),
  CardModal(image: "asset/product4.png", description: "Fresh Vegetables"),
];
