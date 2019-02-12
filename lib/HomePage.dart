import 'package:flutter/material.dart';
import 'package:flutter_planets/widgets/GradientAppBar.dart';
import 'HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          GradientAppBar("Treva"),
          HomePageBody(),
          HomePageBody(),
          HomePageBody(),
        ],
      ),
    );
  }
}