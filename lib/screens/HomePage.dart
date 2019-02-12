import 'package:flutter/material.dart';
import 'package:flutter_planets/widgets/GradientAppBar.dart';
import 'package:flutter_planets/widgets/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF736AB7),
      body: new Column(
        children: <Widget>[
          GradientAppBar("Planets"),
          HomePageBody(),
        ],
      ),
    );
  }
}