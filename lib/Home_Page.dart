import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khana/profile_page.dart';

import 'HomeMenu.dart';
import 'order_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(250, 240, 240, 1),
        // appBar: AppBar(
        //   elevation: 0,
        //   title: Text("Khana Restaurant"),
        //   // Row(
        //   //   children: [
        //   //     Container(
        //   //       color: Colors.black,
        //   //       width: 230,
        //   //       height: 50,
        //   //       alignment: Alignment.center,
        //   //       child: Text("Khana Restaurant"),
        //   //     ),
        //   //     Container(
        //   //       color: Colors.red,
        //   //       width: 50,
        //   //       height: 50,
        //   //       child: Icon(Icons.add),
        //   //     ),
        //   //   ],
        //   // ),
        //   centerTitle: true,
        //   backgroundColor: Color.fromRGBO(107, 0, 0, 1),
        // ),
        // drawer: Drawer(
        //   backgroundColor: Color.fromRGBO(250, 240, 240, 1),
        //   child: Column(
        //     children: [
        //       Container(
        //         width: 400,
        //         height: 180,
        //         child: DrawerHeader(
        //           decoration: BoxDecoration(
        //             color: Color.fromRGBO(107, 0, 0, 1),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Container(
        //                 width: 100,
        //                 height: 75,
        //                 // color: Colors.redAccent,
        //                 child: Image(
        //                   image: AssetImage('assets/images/khana_white.png'),
        //                 ),
        //               ), //logo image
        //               Container(
        //                 width: 130,
        //                 height: 20,
        //                 // color: Colors.redAccent,
        //                 margin: EdgeInsets.only(left: 25),
        //                 child: Text("खाना से खाना लो, ओऱ खाते ऱहो !",
        //                     style: TextStyle(fontSize: 9, color: Colors.white)),
        //               ), //slogan for app
        //             ],
        //           ),
        //         ),
        //       ), //h
        //       Container(
        //         color: Color.fromRGBO(250, 240, 240, 1),
        //         child: Column(
        //
        //           children: [
        //             Container(
        //               height: 50,
        //               width: 285,
        //               child: TextButton.icon(
        //                   style: TextButton.styleFrom(
        //                     alignment: Alignment(-0.9, 0),
        //                     textStyle: TextStyle(color: Colors.red),
        //                     backgroundColor: Colors.transparent,
        //                     shape: RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.circular(8),
        //                     ),
        //                   ),
        //                   onPressed: () => {},
        //                   icon: Icon(
        //                     Icons.person_outline,
        //                     size: 35,
        //                     color: Color.fromRGBO(107, 0, 0, 1),
        //                   ),
        //                   label: Text(
        //                     "My Account",
        //                     style: TextStyle(
        //                         color: Color.fromRGBO(107, 0, 0, 1),
        //                         fontSize: 17),
        //                   )),
        //               margin: EdgeInsets.only(bottom: 7),
        //             ), //my account field
        //             SizedBox(
        //                 height: 1,
        //                 width: 280,
        //                 child:
        //                     ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
        //             Container(
        //               width: 400,
        //               height: 200,
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.menu_book_outlined,
        //                           size: 25,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Menu",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.local_offer_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Deals & Offers",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.card_giftcard_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Daily Offers",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () {},
        //                         icon: Icon(
        //                           Icons.directions_bike_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Deliver On Bike",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             SizedBox(
        //                 height: 1,
        //                 width: 280,
        //                 child:
        //                     ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
        //             Container(
        //               width: 400,
        //               height: 140,
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.share_location,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Track Order",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.history_toggle_off,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Order History",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.account_balance_wallet_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Khana's Wallet",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             SizedBox(
        //                 height: 1,
        //                 width: 280,
        //                 child:
        //                     ColoredBox(color: Color.fromRGBO(107, 0, 0, 0.2))),
        //             Container(
        //               width: 400,
        //               height: 187,
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.feedback_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Feedback",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.note_alt_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Terms & Conditions",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.headset_mic_outlined,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Contact Us",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                   Container(
        //                     height: 40,
        //                     width: 285,
        //                     child: TextButton.icon(
        //                         style: TextButton.styleFrom(
        //                           alignment: Alignment(-0.9, 0),
        //                           textStyle: TextStyle(color: Colors.red),
        //                           backgroundColor: Colors.transparent,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(8),
        //                           ),
        //                         ),
        //                         onPressed: () => {},
        //                         icon: Icon(
        //                           Icons.settings,
        //                           size: 27,
        //                           color: Color.fromRGBO(107, 0, 0, 1),
        //                         ),
        //                         label: Text(
        //                           "Settings",
        //                           style: TextStyle(
        //                               color: Color.fromRGBO(107, 0, 0, 1),
        //                               fontSize: 16),
        //                         )),
        //                     margin: EdgeInsets.only(left: 10),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ) // eader of drawer
        //     ],
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood,),
                label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,),
                label: 'Profile')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,//New
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromRGBO(107, 0, 0, 1),
          // backgroundColor: Color.fromARGB(255, 243, 187, 82),
          //   fixedColor: Color.fromARGB(255, 243, 187, 82)
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: [HomeMenu(), OrderPage(),ProfilePage()],
        )
        //
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
