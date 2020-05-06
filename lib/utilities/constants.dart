import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'Oblivian Text',
);

final kLabelStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontFamily: 'Oblivian Text',
  //textAlign :Alignment.topLeft,
);

final kBoxDecorationStyle = BoxDecoration(
  //color: Color.fromRGBO(26, 125, 30, 0.5),
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(26.0),
  boxShadow: [
    BoxShadow(
      color: Color.fromRGBO(43, 58, 103, 0.21),
      
      offset: Offset(
        4, 
        4),
        blurRadius: 
        9.0,
    ),
    BoxShadow(
      color: Color(0xffF7FAFD),
      blurRadius:
        10, // has the effect of softening the shadow
      offset: Offset(
        -4, // horizontal, move right 10
         -4, // vertical, move down 10
           ),
                          

    )
  ],
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFFE0E7F0),
      const Color(0xFFd2d9e3)],
      )
);