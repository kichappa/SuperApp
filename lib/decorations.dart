import 'package:flutter/material.dart';
import 'package:test1/concave_decorations.dart';

var inputShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(43, 58, 103, 0.21),
        blurRadius: 8, // has the effect of softening the shadow
        offset: Offset(
          4, // horizontal, move right 10
          4, // vertical, move down 10
        ),
      ),
      BoxShadow(
        color: Color(0xffF7FAFD),
        blurRadius: 10, // has the effect of softening the shadow
        offset: Offset(
          -4, // horizontal, move right 10
          -4, // vertical, move down 10
        ),
      ),
    ],
    borderRadius: BorderRadius.circular(26),
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [const Color(0xFFE0E7F0), const Color(0xFFD2D9E3)]));

var inputInnerShadow = ConcaveDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(26),
  ),
  colors: [
    Color.fromRGBO(41, 87, 121, 0.30),
    Color.fromRGBO(241, 244, 254, 0.75)
  ],
  depression: 7,
);
