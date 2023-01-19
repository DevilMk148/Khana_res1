import 'package:flutter/material.dart';

class SreachPage extends StatefulWidget {
  const SreachPage({Key? key}) : super(key: key);

  @override
  State<SreachPage> createState() => _SreachPageState();
}

class _SreachPageState extends State<SreachPage> {

  var userDetails = {};
  var i;
  List returnTicketDetails = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Color.fromRGBO(107, 0, 0, 1),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      Text(
                        "Discover Your Things, Enjoy!!",
                        style: TextStyle(fontSize: 16,color: Colors.white70),
                      ),
                    ],
                  )
                ),
                Container(
                  height: 50,
                  width: 340,
                  alignment: Alignment.bottomCenter,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(20)),
                        // labelText: "Search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.close)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
child: Column(
  children: [
    Container(child: Column(children: [
      Container(child: Text("Genres",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),height: 60,alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 20),),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/food1.jpeg'),
                ),
                Text("Design")
              ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  ),
                  Text("Design")
                ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  ),
                  Text("Design")
                ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  ),
                  Text("Design")
                ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  ),
                  Text("Design")
                ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  ),
                  Text("Design")
                ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              width: 120,
              height: 50,
              margin: EdgeInsets.only(left: 20),
            ),


          ],
        ),
      )
    ],),),
    Container(),
  ],
),
          ),
        ],
      )),
    );
  }
}
