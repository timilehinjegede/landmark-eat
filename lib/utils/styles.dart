import 'package:flutter/material.dart';

TextStyle tStyle({double size, int weight, Color color}) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight == 1
          ? FontWeight.w100
          : weight == 2
              ? FontWeight.w200
              : weight == 3
                  ? FontWeight.w300
                  : weight == 4
                      ? FontWeight.w400
                      : weight == 5
                          ? FontWeight.w500
                          : weight == 6
                              ? FontWeight.w600
                              : weight == 7
                                  ? FontWeight.w700
                                  : weight == 8
                                      ? FontWeight.w800
                                      : weight == 9 ? FontWeight.w900 : null,
    );


final kTitleStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'CM Sans Serif',
    fontSize: 26.0,
    fontWeight: FontWeight.w700,
);

final kSubtitleStyle =
TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600);

final bTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
