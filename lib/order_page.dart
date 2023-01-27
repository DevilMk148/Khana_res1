import 'package:flutter/material.dart';

import 'detail.dart';


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
              icon: Icon(Icons.icecream_rounded),
              child: Text('Dessert',style: TextStyle(fontSize: 12),),

            ),
            Tab(
              icon: Icon(Icons.lunch_dining_rounded),
              child: Text('Lunch',style: TextStyle(fontSize: 12),),

            ),
            Tab(
              icon: Icon(Icons.dinner_dining_rounded),
              child: Text('Dinner',style: TextStyle(fontSize: 12),),

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
            child:Home(),
          ),
          Center(
            child: Dessert(),
          ),
          Center(
            child: Lunch(),
          ),
          Center(
            child: Dinner(),
          ),
        ],
      ),
    );
  }
}



class Dinner extends StatefulWidget {
  const Dinner({Key? key}) : super(key: key);

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {

  var grid = gridview(lst: [],);
  @override
  void initState() {
    super.initState();
    grid = gridview(lst: dinner);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(107, 0, 0, 0.1),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: MediaQuery.of(context).size.height * .001,
              color: Colors.white60,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .720,
                child: grid

            )],
        ),
      ),
    );
  }
}

class Lunch extends StatefulWidget {
  const Lunch({Key? key}) : super(key: key);

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {

  var grid = gridview(lst: [],);
  @override
  void initState() {
    super.initState();
    grid = gridview(lst: lunch);
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(107, 0, 0, 0.1),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: MediaQuery.of(context).size.height * .001,
              color: Colors.white60,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .720,
                child: grid

            )],
        ),
      ),
    );

  }
}

class Dessert extends StatefulWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  State<Dessert> createState() => _DessertState();
}

class _DessertState extends State<Dessert> {


  var grid = gridview(lst: [],);
  @override
  void initState() {
    super.initState();
    grid = gridview(lst: dessert);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(107, 0, 0, 0.1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: MediaQuery.of(context).size.height * .001,
              color: Colors.white60,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .720,
                child: grid

            )],
        ),
      ),
    );

  }
}




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





class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  var grid = gridview(lst: [],);
  @override
  void initState() {
    super.initState();
    grid = gridview(lst: breakfast);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(107, 0, 0, 0.1),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .700,
              child: grid

          )],
      ),
    );
  }
}

class gridview extends StatelessWidget {



  final List<Map> lst;

  const gridview({key,  required this.lst});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), itemBuilder: (BuildContext context,int index){
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
          },
          child:

          Container(
            // height: 280,
            // width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
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
                        SizedBox(width: 40,),
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
                              Text(lst[index]['dis']
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




