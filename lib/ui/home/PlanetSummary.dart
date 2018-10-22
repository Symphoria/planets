import 'package:flutter/material.dart';
import 'package:planets/model/Planet.dart';
import 'package:planets/ui/MyTextStyle.dart';
import 'package:planets/ui/detail/DetailPage.dart';
import 'package:planets/ui/SlideLeftRoute.dart';
import 'package:planets/ui/Separator.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetSummary(this.planet, {this.horizontal = true});

  PlanetSummary.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
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
      margin: EdgeInsets.only(left: horizontal ? 72.0 : 16.0, top: horizontal ? 16.0 : 42.0, right: 16.0, bottom: 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 2.0),
          Text(planet.name, style: MyTextStyle.headerTextStyle),
          Container(height: 6.0),
          Text(planet.title, style: MyTextStyle.subHeaderTextStyle),
          Separator(),
          Row(
            children: <Widget>[
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(value: planet.distance, image: 'assets/images/ic_distance.png')
              ),
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(value: planet.gravity, image: 'assets/images/ic_gravity.png')
              )
            ],
          )
        ],
      ),
    );

    final planetCard = Container(
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal ? new EdgeInsets.only(left: 46.0) : new EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[BoxShadow(color: Colors.black12, blurRadius: 10.0, offset: Offset(0.0, 10.0))]
      ),
      child: planetCardContent
    );

    return GestureDetector(
      onTap: horizontal ? () => Navigator.of(context).push(SlideLeftRoute(DetailPage(planet))) : null,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Stack(
          children: <Widget>[planetCard, planetThumbnail],
        ),
      ),
    );
  }
}
