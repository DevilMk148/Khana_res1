import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:khana/Log_in.dart';
import 'package:khana/search_page.dart';

import 'Sign_up.dart';
import 'order_page.dart';

// main color Color.fromRGBO(107, 0 , 0, 1),
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(107, 0, 0, 1),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 136.50,),
              Container(
                width: 185,
                height: 135,
                // color: Colors.redAccent,
                child: Image(
                  image: AssetImage('assets/images/khana_white.png'),
                ),
              ), //Logo image
              Container(
                width: 200,
                height: 20,
                margin: EdgeInsets.only(left: 27),
                child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",
                    style:
                        TextStyle(fontSize: 15, color: Colors.white)),
              ), //slogan for app
              Container(
                margin: EdgeInsets.only(top: 170),
                // color: Colors.redAccent,
                child: Text("Ready for looking delicious food? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
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
                      fontSize: 13,
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
                  )),
              SizedBox(height: 153.5,),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                      color: Colors.white),
                  width: double.infinity,
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
                  )
              )
              //Get started button
            ],
          ), // red parts of get started page

           // white parts of get started page login line
        ],
      ),
    );
  }
}
