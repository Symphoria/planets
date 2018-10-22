import 'package:flutter/material.dart';
import 'package:planets/model/Planet.dart';
import 'package:planets/ui/MyTextStyle.dart';
import 'package:planets/ui/home/PlanetSummary.dart';
import 'package:planets/ui/Separator.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  Container _getBackground() {
    return Container(
      constraints: BoxConstraints.expand(height: 300.0),
      child: Image.network(planet.picture, fit: BoxFit.cover, height: 300.0)
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0x00736AB7), Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0)
        )
      ),
    );
  }

  Widget _getContent() {
    final _overViewTitle = "Overview".toUpperCase();

    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetSummary(planet, horizontal: false),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_overViewTitle, style: MyTextStyle.headerTextStyle),
              Separator(),
              Text(planet.description, style: MyTextStyle.regularTextStyle)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF736AB7),
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[_getBackground(), _getGradient(), _getContent()],
        ),
      ),
    );
  }
}
