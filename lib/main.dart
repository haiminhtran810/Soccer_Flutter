import 'package:flutter/material.dart';
import 'package:soccerflutter/Product.dart';
import 'package:soccerflutter/ShoppingList.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: "A"),
        Product(name: "B"),
        Product(name: "C")
      ],
    ),
  ));
}
