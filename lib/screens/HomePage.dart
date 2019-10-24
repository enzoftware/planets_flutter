import 'package:flutter/material.dart';
import '../widgets/GradientAppBar.dart';
import '../widgets/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF736AB7),
      body: new Column(
        children: <Widget>[
          GradientAppBar("Milkyway"),
          HomePageBody(),
        ],
      ),
    );
  }
}