import 'package:flutter/material.dart';
import 'package:planets/ui/home/GradientAppBar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[GradientAppBar('treva')],
      ),
    );
  }
}
