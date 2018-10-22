import 'package:flutter/material.dart';
import 'package:planets/model/Planet.dart';
import 'package:planets/ui/MyTextStyle.dart';
import 'package:planets/ui/detail/DetailPage.dart';
import 'package:planets/ui/SlideLeftRoute.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: 'planet-hero-${planet.id}',
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue({String value, String image}) {
      return Row(
        children: <Widget>[
          Image.asset(image, height: 12.0,),
          Container(width: 8.0),
          Text(value, style: MyTextStyle.regularTextStyle)
        ],
      );
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(72.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 2.0),
          Text(planet.name, style: MyTextStyle.headerTextStyle),
          Container(height: 6.0),
          Text(planet.title, style: MyTextStyle.subHeaderTextStyle),
          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 10.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff)
          ),
          Row(
            children: <Widget>[
              Expanded(child: _planetValue(value: planet.distance, image: 'assets/images/ic_distance.png')),
              Expanded(child: _planetValue(value: planet.gravity, image: 'assets/images/ic_gravity.png'))
            ],
          )
        ],
      ),
    );

    final planetCard = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[BoxShadow(color: Colors.black12, blurRadius: 10.0, offset: Offset(0.0, 10.0))]
      ),
      child: planetCardContent,
    );

    return GestureDetector(
      onTap: () => Navigator.of(context).push(SlideLeftRoute(DetailPage(planet))),
      child: Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Stack(
          children: <Widget>[planetCard, planetThumbnail],
        ),
      ),
    );
  }
}
