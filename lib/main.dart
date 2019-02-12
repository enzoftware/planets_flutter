import 'package:flutter/material.dart';
import 'package:flutter_planets/screens/HomePage.dart';
import 'package:flutter_planets/screens/DetailPage.dart';

void main() {
  //Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Planets",
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      '/detail': (_) => DetailPage(),
    },
  ));
}
