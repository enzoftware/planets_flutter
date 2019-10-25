import 'package:flutter/material.dart';
import "./screens/HomePage.dart";

void main() {
  //Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Planets",
    debugShowCheckedModeBanner: false,
    home: new HomePage(),
  ));
}
