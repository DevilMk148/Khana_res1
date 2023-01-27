import 'package:flutter/material.dart';
import 'package:khana/detail.dart';

import 'order_page.dart';

class SreachPage extends StatefulWidget {
  const SreachPage({Key? key}) : super(key: key);

  @override
  State<SreachPage> createState() => _SreachPageState();
}

class _SreachPageState extends State<SreachPage> {

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
        // backgroundColor: Color.fromRGBO(107, 0, 0, 1),
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
                          suffixIcon: Icon(Icons.filter_list)),
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
                                    children: [
                                      SizedBox(width: 10,),
                                      Image.asset('assets/images/fast.png',height: 40),
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
                                    children: [
                                      SizedBox(width: 10,),
                                      Image.asset('assets/images/lunch.png',height: 40),
                                      SizedBox(width: 5,),
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
                                  children: [
                                    SizedBox(width: 10,),
                                    Image.asset('assets/images/food.png',height: 40),
                                    SizedBox(width: 5,),
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
                                    children: [
                                      SizedBox(width: 10,),
                                      Image.asset('assets/images/sweets.png',height: 35),
                                      SizedBox(width: 5,),
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
                              SizedBox(width: 20,)
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
                        GestureDetector(
                          onTap: (){
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2,top: 10,bottom: 8),
                            child: Container(
                                height: 220,
                                width: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/food7.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(child: Text("Margherita",style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 200",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            Container(width: 80,height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8)
                                                  ,color: Color.fromRGBO(107, 0, 0, 0.7)
                                              ),margin: EdgeInsets.only(bottom:10,left: 5),
                                              child: Text("Medium",style: TextStyle(color: Colors.white,fontSize: 11),),alignment: Alignment.center,),
                                          ],),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: (){},
                                      child: Container(height:52,width:52,decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                        color: Color.fromRGBO(107, 0, 0, 0.7),
                                      ),child: Icon(Icons.add,color: Colors.white,),),
                                    )
                                  ],
                                )

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 10,bottom: 8),
                          child: Container(
                              height: 220,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food5.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(child: Text("Veg Burger",style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(child: Text("Rs. 150",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                          Container(width: 80,height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8)
                                                ,color: Color.fromRGBO(107, 0, 0, 0.7)
                                            ),margin: EdgeInsets.only(bottom:10,left: 5),
                                            child: Text("With Drink",style: TextStyle(color: Colors.white,fontSize: 11),),alignment: Alignment.center,),
                                        ],),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(height:52,width:52,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                      color: Color.fromRGBO(107, 0, 0, 0.7),
                                    ),child: Icon(Icons.add,color: Colors.white,),),
                                  )
                                ],
                              )

                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 10,bottom: 8),
                          child: Container(
                              height: 220,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food4.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(child: Text("Veg Salad",style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(child: Text("Rs. 250",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                          // Container(width: 80,height: 20,
                                          //   decoration: BoxDecoration(
                                          //       borderRadius: BorderRadius.circular(8)
                                          //       ,color: Color.fromRGBO(107, 0, 0, 0.7)
                                          //   ),margin: EdgeInsets.only(bottom:10,left: 5),
                                          //   child: Text("Medium",style: TextStyle(color: Colors.white,fontSize: 11),),alignment: Alignment.center,),
                                        ],),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(height:52,width:52,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                      color: Color.fromRGBO(107, 0, 0, 0.7),
                                    ),child: Icon(Icons.add,color: Colors.white,),),
                                  )
                                ],
                              )

                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 10,bottom: 8),
                          child: Container(
                              height: 220,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food2.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(child: Text("Martina Salad",style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                          Container(width: 80,height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8)
                                                ,color: Color.fromRGBO(107, 0, 0, 0.7)
                                            ),margin: EdgeInsets.only(bottom:10,left: 5),
                                            child: Text("Medium",style: TextStyle(color: Colors.white,fontSize: 11),),alignment: Alignment.center,),
                                        ],),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(height:52,width:52,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                      color: Color.fromRGBO(107, 0, 0, 0.7),
                                    ),child: Icon(Icons.add,color: Colors.white,),),
                                  )
                                ],
                              )

                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 10,bottom: 8),
                          child: Container(
                              height: 220,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/food10.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(child: Text("Farm house",style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(child: Text("Rs. 400",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                          Container(width: 80,height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8)
                                                ,color: Color.fromRGBO(107, 0, 0, 0.7)
                                            ),margin: EdgeInsets.only(bottom:10,left: 5),
                                            child: Text("Medium",style: TextStyle(color: Colors.white,fontSize: 11),),alignment: Alignment.center,),
                                        ],),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(height:52,width:52,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                      color: Color.fromRGBO(107, 0, 0, 0.7),
                                    ),child: Icon(Icons.add,color: Colors.white,),),
                                  )
                                ],
                              )

                          ),
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
