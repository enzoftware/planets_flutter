import 'package:flutter/material.dart';
import 'package:flutter_planets/widgets/PlanetRow.dart';
import 'package:flutter_planets/model/planet.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                    (context, i) => PlanetRow(planets[i]),
                    childCount: planets.length),
                itemExtent: 152.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
