import 'package:flutter/material.dart';
import '../model/planet.dart';
import '../screens/DetailPage.dart';
import '../widgets/separator.dart';
import '../commons/Style.dart';

class PlanetRow extends StatelessWidget{

  final Planet planet;
  final bool horizontal;

  PlanetRow(this.planet, {this.horizontal = true});
  PlanetRow.vertical(this.planet): horizontal = false;

  @override
  Widget build(BuildContext context) {
    print(planet.distance);

    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: Image(
          image: AssetImage(planet.image),
          height: 102.0,
          width: 92.0,
        ),
      ),
    );


    Widget _planetValue({String value, String image}) {
      return Container(
        child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(image, height: 11.0),
              Container(width: 8.0),
              Text(value, style: Style.smallTextStyle),
            ]
        ),
      );
    }


    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 4.0),
          Text(planet.name, style: Style.titleTextStyle),
          Container(height: 7.0),
          Text(planet.location, style: Style.commonTextStyle),
          Separator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _planetValue(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png')

              ),
              Container (
                width: 32.0,
              ),
              Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _planetValue(
                      value: planet.gravity,
                      image: 'assets/img/ic_gravity.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = Container(
      child: planetCardContent,
      height: horizontal ? 132.0 : 162.0,
      margin: horizontal
          ? EdgeInsets.only(left: 46.0)
          : EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => DetailPage(planet),
            transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        )
    );
  }
}