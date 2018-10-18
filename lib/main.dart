import 'package:flutter/material.dart';
import 'package:planets/ui/home/Homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Planets',
      home: Homepage(),
    );
  }
}
