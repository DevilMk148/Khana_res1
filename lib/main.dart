import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:khana/Log_in.dart';
import 'package:khana/search_page.dart';

import 'Sign_up.dart';
import 'order_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

// main color Color.fromRGBO(107, 0 , 0, 1),
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              color: Color.fromRGBO(107, 0, 0, 1),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 750,
                    color: Color.fromRGBO(107, 0, 0, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 195,
                          height: 145,
                          // color: Colors.redAccent,
                          child: Image(
                            image: AssetImage('assets/images/khana_white.png'),
                          ),
                        ), //Logo image
                        Container(
                          width: 200,
                          height: 20,
                          margin: EdgeInsets.only(left: 40),
                          child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ), //slogan for app
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 170),
                          // color: Colors.redAccent,
                          child: Text("Ready for looking delicious food? ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ), //description
                        Container(
                          width: 250,
                          // color: Colors.black,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                              "It's our duty to satisfy you with delicious food and food delivery ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              )),
                        ), //description
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 20),
                            // color: Colors.redAccent,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Sign_In()));
                              },
                              child: Text('Get Started',
                                  style: TextStyle(fontSize: 14)),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(107, 0, 0, 1)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.transparent),
                                  ))),
                            )), //Get started button
                      ],
                    ),
                  ), // red parts of get started page
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      width: 400,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 70),
                            child: Text(
                              'Already have an Account?',
                              style: TextStyle(
                                  fontFamily: 'FontMain', fontSize: 16),
                            ),
                          ), //line before login
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: new GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Log_In()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontFamily: 'FontMain',
                                      fontSize: 16,
                                      color: Color.fromRGBO(107, 0, 0, 1)),
                                ),
                              )), // login text
                        ],
                      )), // white parts of get started page login line
                ],
              )) //Get started page
        ],
      ),
    );
  }
}
