import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khana/main.dart';

void main() {
  runApp(MaterialApp(
    home: SlpashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({Key? key}) : super(key: key);

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: Container(
          width: 195,
          height: 145,
          // color: Colors.redAccent,
          child: Image(
            image: AssetImage('assets/images/khana_png.png'),
          ),
      ),
        ), //Logo image
        Center(
          child: Container(
            width: 200,
            height: 20,
            margin: EdgeInsets.only(left: 22),
            child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",
                style:
                TextStyle(fontSize: 16, color: Color.fromARGB(107, 0, 0, 1))),
          ),
        ),]),
    );
  }
}
