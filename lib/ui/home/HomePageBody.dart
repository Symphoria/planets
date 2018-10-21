import 'package:flutter/material.dart';
import 'package:planets/ui/home/PlanetRow.dart';
import 'package:planets/model/Planet.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[4]);
  }
}
