import 'package:flutter/material.dart';
import 'package:test1/concave_decorations.dart';

var buttonDownOuter = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(55, 84, 170, 0.1),
        blurRadius: 8, // has the effect of softening the shadow
        offset: Offset(
          6, // horizontal, move right 10
          6, // vertical, move down 10
        ),
      ),
      BoxShadow(
        color: Color.fromRGBO(255, 255, 255, 0.69),
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
        colors: [const Color(0xFFDDE4ED), const Color(0xFFD3DBE4)]));

var buttonDownInner = ConcaveDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(26),
  ),
  colors: [
    Color.fromRGBO(106, 149, 212, 0.18),
    Color.fromRGBO(232, 241, 252, 0.61)
  ],
  depression: 10,
);

var baseTileUpInner = ConcaveDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(26),
  ),
  colors: [
    Color.fromRGBO(255, 255, 255, 0.64),
    Color.fromRGBO(166, 169, 177, 0.95)
  ],
  depression: 1,
);
var baseTileUpOuter = BoxDecoration(
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

var inputInner = ConcaveDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(26),
  ),
  colors: [
    Color.fromRGBO(41, 87, 121, 0.26),
    Color.fromRGBO(241, 244, 254, 0.75)
  ],
  depression: 10,
);

TextStyle inputText(double fontSize) {
  return TextStyle(
      fontFamily: "OblivianText",
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      color: Color(0xff6F6F6F));
}

var baseBack = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
      const Color(0xFFE2E8F0),
      const Color(0xFFD0D6DE),
    ]));
