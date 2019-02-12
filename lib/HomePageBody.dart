import 'package:flutter/material.dart';
import 'package:flutter_planets/widgets/PlanetRow.dart';
import 'package:flutter_planets/model/Planet.dart';

class HomePageBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PlanetRow(planets[0]),
        PlanetRow(planets[1]),
        PlanetRow(planets[2]),
      ],
    );
  }

}