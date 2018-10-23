import 'package:flutter/material.dart';

class MyTextStyle {
  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
  static final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 19.0,
    fontWeight: FontWeight.w600
  );
  static final regularTextStyle = baseTextStyle.copyWith(
    color: Color(0xffb6b2df),
    fontSize: 9.0,
    fontWeight: FontWeight.w400
  );
  static final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 14.0);
}