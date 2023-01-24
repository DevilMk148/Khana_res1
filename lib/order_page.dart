import 'package:flutter/material.dart';


class OrderPage extends StatefulWidget {
const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _OrderPageState extends State<OrderPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelColor:Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.breakfast_dining_rounded,),
              child: Text('BreakFast',style: TextStyle(fontSize: 12),),
            ),
            Tab(
              icon: Icon(Icons.dinner_dining_rounded),
              child: Text('Dinner',style: TextStyle(fontSize: 12),),

            ),
            Tab(
              icon: Icon(Icons.lunch_dining_rounded),
              child: Text('Lunch',style: TextStyle(fontSize: 12),),

            ),
            Tab(
              icon: Icon(Icons.icecream_rounded),
              child: Text('Dessert',style: TextStyle(fontSize: 12),),

            ),
          ],
        ),
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
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: BreakFast(),
          ),
          Center(
            child: Dinner(),
          ),
          Center(
            child: Lunch(),
          ),
          Center(
            child: Dessert(),
          ),
        ],
      ),
    );
  }
}

class BreakFast extends StatefulWidget {
  const BreakFast({Key? key}) : super(key: key);

  @override
  State<BreakFast> createState() => _BreakFastState();
}

class _BreakFastState extends State<BreakFast> {
  List<String> data = ["Maegherita","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza",];
  List<String> price = ["Rs.350", "Rs.300", "Rs.550", "Rs.550", "Rs.450","Rs.350", "Rs.300", "Rs.550", "Rs.450",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
      crossAxisCount: 2,
      // crossAxisSpacing: 10.0,
      // mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: List.generate(9, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
          child:Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/images/food10.jpeg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text(data[index],style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text(price[index],style: TextStyle(color: Colors.white)),
                    ],
                  ),

                  height: 60,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(107, 0, 0, 0.6),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                  ),
                ),
              ],
            ),
          ),

        );
      },),
    ),
    );
    // return                   SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
    //   child: Column(
    //     children: [
    //       SizedBox(height: 10,),
    //       Row(children: [
    //         SizedBox(width: 5,),
    //         Container(
    //           height: 200,
    //           width: 170,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               color: Colors.red,
    //               image: DecorationImage(
    //                   image: AssetImage('assets/images/food10.jpeg'),
    //                   fit: BoxFit.cover)),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Container(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                     Text("Rs.550",style: TextStyle(color: Colors.white)),
    //                   ],
    //                 ),
    //
    //                 height: 60,
    //                 width: 200,
    //                 alignment: Alignment.bottomCenter,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromRGBO(107, 0, 0, 0.6),
    //                   borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(width: 10,),
    //         Container(
    //           height: 200,
    //           width: 170,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(20),
    //             color: Colors.green,
    //             image: DecorationImage(
    //                 image: AssetImage('assets/images/food_p1.jpg'),
    //                 fit: BoxFit.cover),
    //           ),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Container(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Text("Veg-Pizza",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                     Text("Rs.550",style: TextStyle(color: Colors.white)),
    //                   ],
    //                 ),
    //
    //                 height: 60,
    //                 width: 200,
    //                 alignment: Alignment.bottomCenter,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromRGBO(107, 0, 0, 0.6),
    //                   borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(width: 5,),
    //       ],),
    //       SizedBox(height: 10,),
    //       Row(children: [
    //         SizedBox(width: 5,),
    //         Container(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                       Text("Rs.550",style: TextStyle(color: Colors.white)),
    //                     ],
    //                   ),
    //                   height: 60,
    //                   width: 200,
    //                   alignment: Alignment.bottomCenter,
    //                   decoration: BoxDecoration(
    //                     color: Color.fromRGBO(107, 0, 0, 0.6),
    //                     borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             height: 200,
    //             width: 170,
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 color: Colors.blue,
    //                 image: DecorationImage(
    //                     image: AssetImage('assets/images/food7.jpeg'),
    //                     fit: BoxFit.cover))
    //         ),
    //         SizedBox(width: 10,),
    //         Container(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Text("7Chees Pizza",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                       Text("Rs.550",style: TextStyle(color: Colors.white)),
    //                     ],
    //                   ),
    //                   height: 60,
    //                   width: 200,
    //                   alignment: Alignment.bottomCenter,
    //                   decoration: BoxDecoration(
    //                     color: Color.fromRGBO(107,0,0, 0.6),
    //                     borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             height: 200,
    //             width: 170,
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 color: Colors.orange,
    //                 image: DecorationImage(
    //                     image: AssetImage('assets/images/food_p2.jpg'),
    //                     fit: BoxFit.cover))),
    //         SizedBox(width: 5,),
    //
    //       ],),
    //       SizedBox(height: 10,),
    //       Row(children: [
    //         SizedBox(width: 5,),
    //         Container(
    //           height: 200,
    //           width: 170,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               color: Colors.red,
    //               image: DecorationImage(
    //                   image: AssetImage('assets/images/food10.jpeg'),
    //                   fit: BoxFit.cover)),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Container(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
    //                     Text("Rs.550",style: TextStyle(color: Colors.white)),
    //                   ],
    //                 ),
    //
    //                 height: 60,
    //                 width: 200,
    //                 alignment: Alignment.bottomCenter,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromRGBO(107, 0, 0, 0.6),
    //                   borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(width: 10,)
    //       ],),
    //       SizedBox(height: 10,),
    //     ],
    //   ),
    // );

  }
}


class Dinner extends StatefulWidget {
  const Dinner({Key? key}) : super(key: key);

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  List<String> data = ["Maegherita", "Chees Corn", "7Chees Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza",];
  List<String> price = ["Rs.350", "Rs.550", "Rs.450","Rs.350", "Rs.300", "Rs.550", "Rs.450","Rs.350", "Rs.300", "Rs.550", "Rs.450",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 10.0,
        // mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(11, (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
            child:Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/food10.jpeg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(data[index],style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(price[index],style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    height: 60,
                    width: 200,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(107, 0, 0, 0.6),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),

          );
        },),
      ),
    );  }
}

class Lunch extends StatefulWidget {
  const Lunch({Key? key}) : super(key: key);

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  List<String> data = ["Maegherita", "Veg-Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza",];
  List<String> price = ["Rs.350", "Rs.300", "Rs.550", "Rs.300", "Rs.550", "Rs.450","Rs.350", "Rs.300", "Rs.550", "Rs.450",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 10.0,
        // mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
            child:Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/food10.jpeg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(data[index],style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(price[index],style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    height: 60,
                    width: 200,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(107, 0, 0, 0.6),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),

          );
        },),
      ),
    );  }
}

class Dessert extends StatefulWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  State<Dessert> createState() => _DessertState();
}

class _DessertState extends State<Dessert> {
  List<String> data = ["Maegherita", "Veg-Pizza", "Veg-Pizza", "Chees Corn", "7Chees Pizza","Maegherita", "Veg-Pizza", "Chees Corn", "7Chees Pizza",];
  List<String> price = ["Rs.350", "Rs.300", "Rs.550", "Rs.450", "Rs.450","Rs.350", "Rs.300", "Rs.550", "Rs.450",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 10.0,
        // mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(9, (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
            child:Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/food10.jpeg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text("Margherita",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(data[index],style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text(price[index],style: TextStyle(color: Colors.white)),
                      ],
                    ),

                    height: 60,
                    width: 200,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(107, 0, 0, 0.6),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),

          );
        },),
      ),
    );  }
}



