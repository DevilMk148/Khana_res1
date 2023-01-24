import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khana/order_page.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Carousel(
                              dotSize: 7.0,
                              dotColor: Color.fromRGBO(250, 240, 240, 1),
                              dotIncreasedColor: Color.fromRGBO(107, 0, 0, 1),
                              dotBgColor: Colors.transparent,
                              dotSpacing: 15.0,
                              dotPosition: DotPosition.bottomCenter,
                              images: [
                                Image.asset(
                                  'assets/images/poster3.jpg',
                                  fit: BoxFit.cover,
                                ),
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
                                ),
                                Image.asset(
                                  'assets/images/poster3.jpg',
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/poster2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(height: 40,width:double.infinity,child: Text("Catagories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),alignment: Alignment.centerLeft,),
                    Container(
                      height: 100,
                      // color: Colors.orange,
                      child: Padding(padding: EdgeInsets.all(4),
                      child: Row(
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/sweet1.png'),height: 70,width: 80,),
                                Text("Dessert")
                              ],
                            ),
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                            },                          ),
                          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                          },
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/food.png'),height: 60,width: 80,),
                                SizedBox(height: 10,),
                                Text("Dinner")
                              ],
                            ),
                          ),
                          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                          },
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/lunch.png'),height: 60,width: 80,),
                                SizedBox(height: 10,),
                                Text("Lunch")
                              ],
                            ),
                          ),
                          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                          },
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/fast.png'),height: 60,width: 80,),
                                SizedBox(height: 10,),
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
                Padding(padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Offers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Color.fromRGBO(107,0,0,1))),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAll()));
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Text("View All",style: TextStyle(color: Color.fromRGBO(107,0,0,1)),),
                                  Icon(Icons.chevron_right_outlined,color: Color.fromRGBO(107,0,0,1),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/poster8.jpg')),
                          borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ],
                ),
                ),
                Padding(padding: EdgeInsets.all(8),
                child:Container(
                  child: Column(
                    children: [
                      Container(width: double.infinity,height: 30,margin: EdgeInsets.only(left: 8),child: Text("Near You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color.fromRGBO(107,0,0,1))),),
                      Container(
                        height: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/food7.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Text("Margherita",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            Container(width: 80,height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Colors.white70,
                                              ),margin: EdgeInsets.only(bottom:10,left: 5),
                                              child: Text("Medium",style: TextStyle(color: Colors.black38,fontSize: 11),),alignment: Alignment.center,),
                                          ],)],
                                    )

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/food5.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Text("Veggie Burger",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            Container(width: 80,height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Colors.white70,
                                              ),margin: EdgeInsets.only(bottom:10,left: 5),
                                              child: Text("No Cheese",style: TextStyle(color: Colors.black38,fontSize: 11),),alignment: Alignment.center,),
                                          ],)],
                                    )

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/food4.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Text("Russian Salad",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            // Container(width: 50,height: 20,
                                            //     decoration: BoxDecoration(
                                            //       borderRadius: BorderRadius.circular(10),
                                            //       color: Colors.white70,
                                            //     ),margin: EdgeInsets.only(bottom:10,left: 5)),
                                          ],)],
                                    )

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/food2.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Text("Asian Wraps",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            Container(width: 50,height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Colors.white70,
                                              ),margin: EdgeInsets.only(bottom:10,left: 5),
                                              child: Text("Small",style: TextStyle(color: Colors.black38,fontSize: 11),),alignment: Alignment.center,),
                                          ],)],
                                    )

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,bottom: 8),
                                child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/food10.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Text("Cheese n Corn ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom: 5,left: 10),alignment: Alignment.centerLeft,),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(child: Text("Rs. 350",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),padding: EdgeInsets.only(bottom:10,left: 10),),
                                            Container(width: 70,height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: Colors.white70,
                                              ),margin: EdgeInsets.only(bottom:10,left: 5),
                                              child: Text("Medium",style: TextStyle(color: Colors.black38,fontSize: 11),),alignment: Alignment.center,),
                                          ],)],
                                    )

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                ),
              ],
            ),
          ),
        ),
      ),
    );
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

