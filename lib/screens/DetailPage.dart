import 'package:flutter/material.dart';
import '../widgets/PlanetRow.dart';
import '../model/planet.dart';
import '../commons/Style.dart';
import '../widgets/Separator.dart';

class DetailPage extends StatelessWidget{
  
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {

    Container _getBackground() {
      return Container(
        child: Image.network(planet.picture,
        fit: BoxFit.cover,
        height: 300,
        ),
        constraints: BoxConstraints.expand(height: 300),
      );
    }

    Container _getToolbar(BuildContext context) {
      return new Container(
        margin: new EdgeInsets.only(
            top: MediaQuery
                .of(context)
                .padding
                .top),
        child: new BackButton(color: Colors.white),
      );
    }

    Container _getGradient() {
      return Container(
        margin: EdgeInsets.only(top: 190),
        height: 110,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[
                Color(0x00736AB7),
                Color(0xFF736AB7)
              ],
            stops: [0.0, 0.9],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0)
          ),
        ),
      );
    }


    Widget _getContent() {
      final _overviewTitle = "Overview".toUpperCase();
      return ListView(
        padding: EdgeInsets.fromLTRB(0, 72, 0, 32),
        children: <Widget>[
          PlanetRow(planet, horizontal : false  ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Text(_overviewTitle, style: Style.headerTextStyle,),
                  Separator(),
                  Text(planet.description, style: Style.commonTextStyle,),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context)
          ],
        ),
      ),
    );
  }
}