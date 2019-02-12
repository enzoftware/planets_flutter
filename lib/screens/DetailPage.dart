import 'package:flutter/material.dart';
import 'package:flutter_planets/model/Planet.dart';

class DetailPage extends StatelessWidget{
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(planet.image, width: 96, height: 96,)
          ],
        ),
      ),
    );
  }

}