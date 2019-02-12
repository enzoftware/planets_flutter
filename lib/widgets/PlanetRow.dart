import 'package:flutter/material.dart';
import 'package:flutter_planets/model/Planet.dart';




class PlanetRow extends StatelessWidget{

  final Planet planet;
  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {


    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );

    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600
    );

    final regularTextStyle = baseTextStyle.copyWith(
        color: Color(0xffb6b2df),
        fontSize: 9,
        fontWeight: FontWeight.w400
    );

    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12
    );

    Widget _planetValue({String value, String image}) {
      return Row(
        children: <Widget>[
          Image.asset(image, height: 12,),
          Container(width: 8,),
          Text(value, style: regularTextStyle,)
        ],
      );
    }

    Widget planetCardContent() {
      return Container(
        margin: EdgeInsets.fromLTRB(76, 16, 16, 16),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(height: 4.0,),
        Text(
          planet.name,
          style: headerTextStyle,
        ),
        Container(height: 10,),
        Text(
          planet.location,
          style: subHeaderTextStyle,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.0),
          height: 2.0,
          width: 18.0,
          color: Color(0xff00c6ff),
        ),
        Row(
            children: <Widget>[
                Expanded(
                  child: _planetValue(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png'
                  ),
                ),
                Expanded(
                  child: _planetValue(
                  value: planet.gravity,
                  image: 'assets/img/ic_gravity.png'
                  ),
                ),
              ]
            )
          ],
        )
      );
    }

    Widget planetThumbnail(String img) {
      return Container(
        margin: EdgeInsets.symmetric(
            vertical: 16
        ),
        alignment: FractionalOffset.centerLeft,
        child: Image(
          image: AssetImage(img),
          height: 92,
          width: 92,
        ),
      );
    }


    final planetCard = Container(
      height: 124,
      child: planetCardContent(),
      margin: EdgeInsets.only(left: 46),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
    );




    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24
      ),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail(planet.image)
        ],
      ),
    );
  }

}