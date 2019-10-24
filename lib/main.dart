import 'package:flutter/material.dart';
import 'package:flutter_planets/screens/HomePage.dart';

void main() {
  //Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Planets",
    debugShowCheckedModeBanner: false,
    home: new HomePage(),
  ));
}
