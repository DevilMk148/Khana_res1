import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:khana/Log_in.dart';
import 'package:khana/search_page.dart';

import 'Sign_up.dart';
import 'order_page.dart';
void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

// main color Color.fromRGBO(107, 0 , 0, 1),
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                Container(
                  color: Color.fromRGBO(107, 0 , 0, 1),
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 750,
                        color:Color.fromRGBO(107, 0 , 0, 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 195,
                              height: 145,
                              // color: Colors.redAccent,
                              child: Image(image: AssetImage('assets/images/khana_white.png'),),
                            ),//Logo image
                            Container(
                              width: 200,
                              height: 20,
                              margin: EdgeInsets.only(left: 40),
                              child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",style: TextStyle(fontSize: 14,color: Colors.white)),
                            ),//slogan for app
                            Container(
                              width: 300,
                              margin: EdgeInsets.only(top: 170),
                              // color: Colors.redAccent,
                              child: Text("Ready for looking delicious food? ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,)),
                            ),//description
                            Container(
                              width: 250,
                              // color: Colors.black,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("It's our duty to satisfy you with delicious food and food delivery ",textAlign: TextAlign.center,style: TextStyle(fontSize: 10,color: Colors.white,)),
                            ),//description
                            Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 20),
                                // color: Colors.redAccent,
                                child:ElevatedButton(
                                  onPressed:(){

                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_In()));
                                  },
                                  child: Text('Get Started',style: TextStyle(fontSize: 14)),
                                  style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Color.fromRGBO(107, 0 , 0, 1)),
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color:Colors.transparent),
                                      ))
                                  ),

                                )
                            ),//Get started button
                          ],
                        ),
                      ), // red parts of get started page
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:Colors.white
                          ),
                          width: 400,
                          height: 50,
                          child:Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 70),
                                child: Text('Already have an Account?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16 ),),
                              ), //line before login
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: new GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Log_In()));
                                    },
                                    child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Color.fromRGBO(107, 0 , 0, 1) ),),
                                  )

                              ), // login text
                            ],
                          )
                      ), // white parts of get started page login line
                    ],
                  )
                )//Get started page
        ],
      ),
    );
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // Padding(
  // padding: const EdgeInsets.all(8.0),
  // child: Container(
  // height: 200,
  // child: ListView(
  // children: [
  // SizedBox(height: 200,
  // width: double.infinity,
  // child: Carousel(
  // dotSize: 7.0,
  // dotColor: Color.fromRGBO(250, 240 , 240, 1),
  // dotIncreasedColor: Color.fromRGBO(107, 0 , 0, 1),
  // dotBgColor: Colors.transparent,
  // dotSpacing: 15.0,
  // dotPosition: DotPosition.bottomCenter,
  // images:[
  // Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
  // Image.asset('assets/images/poster2.jpg',fit: BoxFit.cover,),
  // Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
  // Image.asset('assets/images/poster1.jpg',fit: BoxFit.cover,),
  // Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
  // Image.asset('assets/images/poster2.jpg',fit: BoxFit.cover,),
  // ]
  // ),
  // )
  // ],
  // ),
  // ),
  // ),
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 240 , 240, 1),
      appBar: AppBar(
        title: Text('Khana Restaurant'),
        backgroundColor:Color.fromRGBO(107, 0 , 0, 1),
      ),
      drawer: Drawer(backgroundColor:Color.fromRGBO(250, 240 , 240, 1),

      child:
            Column(
              children: [

                Container(width: 400, height: 180, child: DrawerHeader(
                    decoration: BoxDecoration(color: Color.fromRGBO(107, 0 , 0, 1),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 75,
                          // color: Colors.redAccent,
                          child: Image(image: AssetImage('assets/images/khana_white.png'),),
                        ),//logo image
                        Container(
                          width: 130,
                          height: 20,
                          // color: Colors.redAccent,
                          margin: EdgeInsets.only(left: 25),
                          child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",style: TextStyle(fontSize: 9,color: Colors.white)),
                        ),//slogan for app
                      ],
                    ),
                  ),),//h
                Container(
                  color: Color.fromRGBO(250, 240 , 240, 1),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 285,
                        child:TextButton.icon(
                            style: TextButton.styleFrom(
                              alignment: Alignment(-0.9, 0),
                              textStyle: TextStyle(color: Colors.red),
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: ()=>{},
                            icon: Icon(Icons.person_outline,size: 35,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                            label: Text("My Account",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 17),)),
                        margin: EdgeInsets.only(bottom: 7),
                      ),//my account field
                      SizedBox(height: 1,width: 280,child: ColoredBox(color: Color.fromRGBO(107, 0 , 0, 0.2))),
                      Container(width: 400,height: 200, child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.menu_book_outlined,size: 25,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Menu",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.local_offer_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Deals & Offers",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.card_giftcard_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Daily Offers",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(Icons.directions_bike_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Deliver On Bike",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                        ],
                      ),),
                      SizedBox(height: 1,width: 280,child: ColoredBox(color: Color.fromRGBO(107, 0 , 0, 0.2))),
                      Container(width: 400,height: 140,child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.share_location,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Track Order",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.history_toggle_off,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Order History",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.account_balance_wallet_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Khana's Wallet",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                        ],
                      ),),
                      SizedBox(height: 1,width: 280,child: ColoredBox(color: Color.fromRGBO(107, 0 , 0, 0.2))),
                      Container(width: 400,height: 187,child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.feedback_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Feedback",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.note_alt_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Terms & Conditions",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.headset_mic_outlined,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Contact Us",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                          Container(
                            height: 40,
                            width: 285,
                            child:TextButton.icon(
                                style: TextButton.styleFrom(
                                  alignment: Alignment(-0.9, 0),
                                  textStyle: TextStyle(color: Colors.red),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: ()=>{},
                                icon: Icon(Icons.settings,size: 27,color:Color.fromRGBO(107, 0 , 0, 1) ,),
                                label: Text("Settings",style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1),fontSize: 16),)),
                            margin: EdgeInsets.only(left: 10),),
                        ],
                      ),),
                    ],
                  ),
                )// eader of drawer

              ],
            ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined,),label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood,),label: 'Coldrinks'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile')
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromRGBO(107, 0, 0, 1),
        // backgroundColor: Color.fromARGB(255, 243, 187, 82),
        //   fixedColor: Color.fromARGB(255, 243, 187, 82)
      ),
      // body: new IndexedStack(
      //   index: _selectedIndex,
      //   children: <Widget>[
      //     // new main_home(),
      //     new Home_Page(),
      //     new SreachPage(),
      //     new OrderPage()
      //     // new YourCustomFeedWidget(),
      //     // new YourCustomCommunityWidget(),
      //   ],
      // ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}










