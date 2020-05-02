import 'package:flutter/material.dart';
import 'package:test1/concave_decorations.dart';

import 'package:test1/decorations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insti Super App',
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFFE2E8F0), const Color(0xFFD0D6DE)])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
                    child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 309,
                    height: 63,
                    decoration: inputShadow, 
                    child: Center(
                        child: Container(
                            width: 309,
                            height: 60,
                            decoration: inputInnerShadow,
                            child: Center(
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    width: 265,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "kichappa@gmail.com",
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                          fontFamily: "OblivianText",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color(0xff6F6F6F)),
                                      cursorColor: Color(0xff6F6F6F),
                                      cursorWidth: 3,
                                    )))))),
                // SizedBox(height: 40),
                Text(
                  "password"
                ),
                Container(
                    width: 309,
                    height: 63,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(43, 58, 103, 0.21),
                            blurRadius:
                                8, // has the effect of softening the shadow
                            offset: Offset(
                              4, // horizontal, move right 10
                              4, // vertical, move down 10
                            ),
                          ),
                          BoxShadow(
                            color: Color(0xffF7FAFD),
                            blurRadius:
                                10, // has the effect of softening the shadow
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
                            colors: [
                              const Color(0xFFE0E7F0),
                              const Color(0xFFD2D9E3)
                            ])),
                    child: Center(
                        child: Container(
                            width: 309,
                            height: 60,
                            decoration: ConcaveDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              colors: [
                                Color.fromRGBO(41, 87, 121, 0.30),
                                Color.fromRGBO(241, 244, 254, 0.75)
                              ],
                              depression: 7,
                            ),
                            child: Center(
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    width: 265,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "••••••••",
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                          fontFamily: "OblivianText",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color(0xff6F6F6F)),
                                      cursorColor: Color(0xff6F6F6F),
                                      cursorWidth: 3,
                                    )))))),
                // Container(
                //     decoration: BoxDecoration(
                //         boxShadow: [
                //           BoxShadow(
                //             color: Color.fromRGBO(43, 58, 103, 0.21),
                //             blurRadius:
                //                 8, // has the effect of softening the shadow
                //             offset: Offset(
                //               4, // horizontal, move right 10
                //               4, // vertical, move down 10
                //             ),
                //           ),
                //           BoxShadow(
                //             color: Color(0xffF7FAFD),
                //             blurRadius:
                //                 10, // has the effect of softening the shadow
                //             offset: Offset(
                //               -4, // horizontal, move right 10
                //               -4, // vertical, move down 10
                //             ),
                //           ),
                //         ],
                //         borderRadius: BorderRadius.circular(26),
                //         gradient: LinearGradient(
                //             begin: Alignment.topLeft,
                //             end: Alignment.bottomRight,
                //             colors: [
                //               const Color(0xFFE0E7F0),
                //               const Color(0xFFD2D9E3)
                //             ])),
                //     child: Container(
                //       width: 309,
                //       height: 60,
                //       decoration: ConcaveDecoration(
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(26),
                //         ),
                //         colors: [
                //           Color.fromRGBO(41, 87, 121, 0.30),
                //           Color.fromRGBO(241, 244, 254, 0.75)
                //         ],
                //         depression: 7,
                //       ),
                //     ))
              ],
            ))),
          ),
        ));
  }
}
