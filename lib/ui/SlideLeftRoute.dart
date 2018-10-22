import 'package:flutter/material.dart';

class SlideLeftRoute extends PageRouteBuilder {
  final Widget widget;

  SlideLeftRoute(this.widget)
      : super(
            pageBuilder: (_, __, ___) => widget,
            transitionsBuilder: (_, animation, __, child) => SlideTransition(
                position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero).animate(animation),
                child: child));
}
