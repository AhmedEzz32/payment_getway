import 'package:flutter/material.dart';

abstract class Styles {
  static const String fontFamily = 'Inter';

  static const TextStyle style25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );  
  
  static const TextStyle style20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );

  static const TextStyle style18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );

  static const TextStyle style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );

  static const TextStyle styleBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );

  static const TextStyle style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    color: Colors.black,
    height: 0,
  );

  static TextStyle style20WithAlpha = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Colors.black.withAlpha(204),
    height: 0,
  );
  
}
