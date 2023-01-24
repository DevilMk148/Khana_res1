import 'package:flutter/material.dart';

import 'order_page.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Khana Restaurant"),
        // Row(
        //   children: [
        //     Container(
        //       color: Colors.black,
        //       width: 230,
        //       height: 50,
        //       alignment: Alignment.center,
        //       child: Text("Khana Restaurant"),
        //     ),
        //     Container(
        //       color: Colors.red,
        //       width: 50,
        //       height: 50,
        //       child: Icon(Icons.add),
        //     ),
        //   ],
        // ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(107, 0, 0, 1),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(250, 240, 240, 1),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 180,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(107, 0, 0, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 75,
                      // color: Colors.redAccent,
                      child: Image(
                        image: AssetImage('assets/images/khana_white.png'),
                      ),
                    ), //logo image
                    Container(
                      width: 130,
                      height: 20,
                      // color: Colors.redAccent,
                      margin: EdgeInsets.only(left: 25),
                      child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",
                          style: TextStyle(fontSize: 9, color: Colors.white)),
                    ), //slogan for app
                  ],
                ),
              ),
            ), //h
            Container(
              color: Color.fromRGBO(250, 240, 240, 1),
              child: Column(

                children: [
                  Container(
                    height: 48,
                    width: 285,
                    child: TextButton.icon(
                        style: TextButton.styleFrom(
                          alignment: Alignment(-0.9, 0),
                          textStyle: TextStyle(color: Colors.red),
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () => {},
                        icon: Icon(
                          Icons.person_outline,
                          size: 35,
                          color: Color.fromRGBO(107, 0, 0, 1),
                        ),
                        label: Text(
                          "My Account",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontSize: 17),
                        )),
                    margin: EdgeInsets.only(bottom: 7),
                  ), //my account field
                  SizedBox(
                      height: 1,
                      width: 280,
                      child:
                      ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
                  Container(
                    width: 400,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.menu_book_outlined,
                                size: 25,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Menu",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.local_offer_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Deals & Offers",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.card_giftcard_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Daily Offers",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              icon: Icon(
                                Icons.directions_bike_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Deliver On Bike",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 1,
                      width: 280,
                      child:
                      ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
                  Container(
                    width: 400,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.share_location,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Track Order",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.history_toggle_off,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Order History",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Khana's Wallet",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 1,
                      width: 280,
                      child:
                      ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
                  Container(
                    width: 400,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.feedback_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Feedback",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.note_alt_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.headset_mic_outlined,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 38,
                          width: 285,
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                alignment: Alignment(-0.9, 0),
                                textStyle: TextStyle(color: Colors.red),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.settings,
                                size: 27,
                                color: Color.fromRGBO(107, 0, 0, 1),
                              ),
                              label: Text(
                                "Settings",
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                    fontSize: 16),
                              )),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ) // eader of drawer
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.white, height: 1, thickness: 1),
            Container(
              width: double.infinity,
              height: 200,
              color: Color.fromRGBO(107, 0, 0, 1),
              child: Column(
                children: [
                  Container(
                      height: 90,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 20, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discover",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Discover Your Things, Enjoy!!",
                            style: TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                        ],
                      )),
                  Container(
                    height: 50,
                    width: 340,
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          // labelText: "Search",
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.close)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Genres",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(107, 0, 0, 1)),
                          ),
                          height: 60,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/fast.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 1),
                                      ),
                                      Text("Breakfast",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(107, 0, 0, 1),
                                  ),
                                  width: 120,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 20),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/lunch.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                      ),
                                      Text("Lunch")
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(107, 0, 0, 0.5),
                                  ),
                                  width: 120,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 20),
                                ),
                              ),
                              GestureDetector(child:Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/images/food.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                    ),
                                    Text("Dinner",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                ),
                                width: 120,
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                              ),),
                              GestureDetector(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                        AssetImage('assets/images/sweets.png'),backgroundColor: Color.fromRGBO(107, 0, 0, 0),
                                      ),
                                      Text("Dessert")
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(107, 0, 0, 0.5),
                                  ),
                                  width: 120,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 20),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Near You",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(107, 0, 0, 1))),
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Explore",
                                  style: TextStyle(
                                      color: Color.fromRGBO(107, 0, 0, 1)),
                                ),
                                Icon(
                                  Icons.chevron_right_outlined,
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 220,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              ),
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              color: Colors.green,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/food_p1.jpg'),
                                  fit: BoxFit.cover),
                            ),

                                child: null,
                            width: 240,
                            height: 150,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                                      Text("Rs.550",style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Order',
                                        style: TextStyle(
                                            fontSize: 14, color: Color.fromRGBO(107, 0, 0, 1))),
                                    style: ButtonStyle(
                                        foregroundColor:
                                        MaterialStateProperty.all(
                                            Colors.black54),
                                        backgroundColor:
                                        MaterialStateProperty.all(
                                            // Color.fromRGBO(107, 0, 0, 1)
                                          Colors.white
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: Colors.transparent),
                                            ))),
                                  )                                ],
                              ),

                              height: 70,
                              width: 250,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(107, 0, 0, 0.6),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              ),
                            ),
                          ],)
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 220,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/food_p1.jpg'),
                                      fit: BoxFit.cover),
                                ),

                                child: null,
                                width: 240,
                                height: 150,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Veg-Pizza",style: TextStyle(fontSize: 20,color: Colors.white),),
                                        Text("Rs.550",style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    SizedBox(width: 40,),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Order',
                                          style: TextStyle(
                                              fontSize: 14, color: Color.fromRGBO(107, 0, 0, 1))),
                                      style: ButtonStyle(
                                          foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black54),
                                          backgroundColor:
                                          MaterialStateProperty.all(
                                            // Color.fromRGBO(107, 0, 0, 1)
                                              Colors.white
                                          ),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                side: BorderSide(
                                                    color: Colors.transparent),
                                              ))),
                                    )                                ],
                                ),

                                height: 70,
                                width: 250,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(107, 0, 0, 0.6),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ],)
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 220,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/food_p1.jpg'),
                                      fit: BoxFit.cover),
                                ),

                                child: null,
                                width: 240,
                                height: 150,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                                        Text("Rs.550",style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    SizedBox(width: 40,),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Order',
                                          style: TextStyle(
                                              fontSize: 14, color: Color.fromRGBO(107, 0, 0, 1))),
                                      style: ButtonStyle(
                                          foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black54),
                                          backgroundColor:
                                          MaterialStateProperty.all(
                                            // Color.fromRGBO(107, 0, 0, 1)
                                              Colors.white
                                          ),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                side: BorderSide(
                                                    color: Colors.transparent),
                                              ))),
                                    )                                ],
                                ),

                                height: 70,
                                width: 250,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(107, 0, 0, 0.6),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ],)
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 220,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/food_p1.jpg'),
                                      fit: BoxFit.cover),
                                ),

                                child: null,
                                width: 240,
                                height: 150,),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("7Chees Pizza",style: TextStyle(fontSize: 20,color: Colors.white),),
                                        Text("Rs.550",style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    SizedBox(width: 25,),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Order',
                                          style: TextStyle(
                                              fontSize: 14, color: Color.fromRGBO(107, 0, 0, 1))),
                                      style: ButtonStyle(
                                          foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black54),
                                          backgroundColor:
                                          MaterialStateProperty.all(
                                            // Color.fromRGBO(107, 0, 0, 1)
                                              Colors.white
                                          ),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                side: BorderSide(
                                                    color: Colors.transparent),
                                              ))),
                                    )                                ],
                                ),

                                height: 70,
                                width: 250,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(107, 0, 0, 0.6),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ],)
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
