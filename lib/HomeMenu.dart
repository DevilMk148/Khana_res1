import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:khana/detail.dart';
import 'package:khana/order_page.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {

  List<Map> breakfast = [{'img':'assets/images/ItalianRusoo.png','name':'Italian Rusoo','dis':'254m','Price':1050},
    {'img':'assets/images/sandwich.png','name':'Sand Wich','dis':'250m','Price':550},
    {'img':'assets/images/food4.jpeg','name':'Veg Salad','dis':'220m','Price':330},
    {'img':'assets/images/sandwich.png','name':'Sand Wich','dis':'150m','Price':550},
    {'img':'assets/images/ItalianRusoo.png','name':'Italian Rusoo','dis':'254m','Price':1050},
    {'img':'assets/images/food4.jpeg','name':'Veg Salad','dis':'160m','Price':330},];

  List<Map> dessert = [{'img':'assets/images/Chocolava.png','name':'Choco Lava','dis':'254m','Price':770},
    {'img':'assets/images/Chocochees.png','name':'Choco Chees','dis':'254m','Price':850},
    {'img':'assets/images/Donuts.png','name':'Donuts','dis':'254m','Price':550},
    {'img':'assets/images/Nutpie.png','name':'Nut Pie','dis':'254m','Price':650},
    {'img':'assets/images/Chocochees.png','name':'Choco Chees','dis':'254m','Price':850},
    {'img':'assets/images/Donuts.png','name':'Donuts','dis':'254m','Price':550},];

  List<Map> lunch = [{'img':'assets/images/fries.png','name':'French Fries','dis':'254m','Price':350},
    {'img':'assets/images/HamBurger.png','name':'Ham Burger','dis':'254m','Price':550},
    {'img':'assets/images/Italiannochos.png','name':'Italian Nachos','dis':'254m','Price':950},
    {'img':'assets/images/fries.png','name':'Fries','dis':'254m','Price':350},
    {'img':'assets/images/Italiannochos.png','name':'Italian Nachos','dis':'254m','Price':950},
    {'img':'assets/images/Burgerspring.png','name':'Burger Spring','dis':'254m','Price':450},];

  List<Map> dinner = [{'img':'assets/images/Martinarolls.png','name':'Martina Rolls','dis':'254m','Price':850},
    {'img':'assets/images/food7.jpeg','name':'Margherita','dis':'254m','Price':350},
    {'img':'assets/images/food2.jpeg','name':'Italian Salad','dis':'254m','Price':650},
    {'img':'assets/images/Martinarolls.png','name':'Martin Rolls','dis':'254m','Price':850},
    {'img':'assets/images/food7.jpeg','name':'Corn n chees','dis':'254m','Price':450},];

  List<Map> data= [
    {
      'name':'Italian Rusoo',
      'img':'assets/images/ItalianRusoo.png',
      'des':'This is Our Product own by Milan Kalathiya',
      'dis':'254m',
      'per':'95%'
    },
    {
      'name':'Sand Wich',
      'img':'assets/images/sandwich.png',
      'des':'This is Our Product own by Milan Kalathiya',
      'dis':'220m',
      'per':'92%'
    },
    {
      'name':'Ham Burger',
      'img':'assets/images/burger.png',
      'des':'This is Our Product own by Milan Kalathiya',
      'dis':'210m',
      'per':'90%'
    },
    {
      'name':'Veg Momos',
      'img':'assets/images/momos.png',
      'des':'This is Our Product own by Milan Kalathiya',
      'dis':'150m',
      'per':'95%'
    }
  ];

  var grid ;

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
      body: Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hot Items",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromRGBO(107, 0, 0, 1))),
                            InkWell(
                              onTap: () {
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "View All",
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
                      SizedBox(height: 15,),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 300,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 210,
                                        child: null,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            // color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/ItalianRusoo.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[0]['name']
                                              ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              data[0]['des'],
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 2,),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              height: 30,
                                              width: 80,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 5,),
                                                  Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(data[0]['dis']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 8,),
                                                  Icon(Icons.adjust_rounded,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(data[0]['per']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),

                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 300,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 210,
                                        child: null,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            // color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/sandwich.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[1]['name'],
                                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              data[1]['des'],
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black54,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 2,),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              height: 30,
                                              width: 80,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 5,),
                                                  Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(                                              data[1]['dis']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 8,),
                                                  Icon(Icons.adjust_rounded,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(data[1]['per'],
                                                    style: TextStyle(color: Colors.white),)
                                                ],),

                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 300,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 210,
                                        child: null,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            // color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/burger.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[1]['name'],
                                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              data[1]['des'],
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black54,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 2,),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              height: 30,
                                              width: 80,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 5,),
                                                  Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(                                              data[1]['dis']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 8,),
                                                  Icon(Icons.adjust_rounded,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(                                              data[1]['per']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),

                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 300,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(107, 0, 0, 0.1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 210,
                                        child: null,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            // color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/momos.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[1]['name'],
                                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              data[1]['des'],
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 2,),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              height: 30,
                                              width: 80,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 5,),
                                                  Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(                                              data[1]['dis']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                color: Color.fromRGBO(107, 0, 0, 1),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 8,),
                                                  Icon(Icons.adjust_rounded,color: Colors.white,size: 20,),
                                                  SizedBox(width:3,),
                                                  Text(                                              data[1]['per']
                                                    ,style: TextStyle(color: Colors.white),)
                                                ],),

                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                            ],
                          ))
                    ],)
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Offers",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromRGBO(107, 0, 0, 1))),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewAll()));
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "View All",
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
                      ImageSlideshow(
                        indicatorColor: Color.fromRGBO(107, 0, 0, 1),
                        onPageChanged: (value) {
                          debugPrint('Page changed: $value');
                        },
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children: [
                          Image.asset(
                            'assets/images/poster2.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/poster3.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/poster1.jpg',
                            fit: BoxFit.cover,
                          ),Image.asset(
                            'assets/images/poster2.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/poster8.jpg',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Text(
                          "Catagories",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        height: 100,
                        // color: Colors.orange,
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/sweet1.png'),
                                      height: 70,
                                      width: 80,
                                    ),
                                    Text("Dessert")
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderPage()));
                                },
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderPage()));
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                      AssetImage('assets/images/food.png'),
                                      height: 60,
                                      width: 80,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Dinner")
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderPage()));
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                      AssetImage('assets/images/lunch.png'),
                                      height: 60,
                                      width: 80,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Lunch")
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderPage()));
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                      AssetImage('assets/images/fast.png'),
                                      height: 60,
                                      width: 80,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Breckfast")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Text(
                          "Breakfast",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .500,
                          child:  grid = gridview(lst: breakfast)
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Text(
                          "Dessert",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .500,
                          child:  grid = gridview(lst: dessert)
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Text(
                          "Lunch",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .500,
                          child:  grid = gridview(lst: lunch)
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Text(
                          "Dinner",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .500,
                          child:  grid = gridview(lst: dinner)
                      )
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}


class gridview extends StatelessWidget {



  final List<Map> lst;

  const gridview({key,  required this.lst});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        crossAxisCount: 1), itemBuilder: (BuildContext context,int index){
      return Padding(
        padding: const EdgeInsets.only(left: 1,top: 1,bottom: 10,right: 10),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
          },
          child:

          Container(
            height: 280,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Container(
                    height: 190,
                    width: 340,
                    child: null,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(lst[index]['img']),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    width: 350,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          lst[index]['name']
                          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'This is Our Product own by Milan Kalathiya,This is Our Product own by Milan Kalathiya,This is Our Product own by Milan Kalathiya' ,style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,                          size: 16,

                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,                          size: 16,

                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,                          size: 16,

                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,                          size: 16,

                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            color: Color.fromRGBO(107, 0, 0, 1),
                          ),
                          height: 30,
                          width: 65,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 5,),
                              Icon(Icons.location_on_outlined,color: Colors.white,size: 16,),
                              Text(lst[index]['dis']
                                ,style: TextStyle(color: Colors.white,fontSize: 14),)
                            ],),
                        ),
                        SizedBox(width: 2,),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            color: Color.fromRGBO(107, 0, 0, 1),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 2,),
                              Icon(Icons.currency_rupee,color: Colors.white,size: 18,),
                              Text(lst[index]['Price'].toString()
                                ,style: TextStyle(color: Colors.white,fontSize: 16),)
                            ],),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
      );
    },itemCount: lst.length,);
  }
}


class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
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
body: SingleChildScrollView(
  child:   Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Column(
  
      children: [
  SizedBox(height: 10,),
        Container(child: Image.asset('assets/images/poster1.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster2.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster4.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster5.png',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster6.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster7.png',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

        Container(child: Image.asset('assets/images/poster8.jpg',fit: BoxFit.cover,),height: 200),
        SizedBox(height: 10,),

      ],
  
    ),
  
  ),
),
    );
  }
}

