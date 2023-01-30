import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:khana/detail.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}
List<Map> Data = [
  {
    "title": "ItalianRusoo",
    "image": 'assets/images/ItalianRusoo.png',
    "price": 320,
    "info": "The comfort of potato and the crunch of corn in one thick pattie. Topped off with lettuce, tomatoes, gherkins and served with hot chips.",
    "star": "4.6",
    "likes": "1056",
    "mes": "403",
    "time": "60m",
    "cal": "340cal",
    "gram": "110g"
  },
  {
    "title": "Sandwich",
    "image": 'assets/images/sandwich.png',
    "price": 200,
    "info": "Being a vegetarian is no reason to deny yourself the gluttonous pleasures of an overstuffed bun. Try this bean burger with a chipotle chilli and a dash of lime.",
    "star": "4.3",
    "likes": "656",
    "mes": "218",
    "time": "50m",
    "cal": "290cal",
    "gram": "140g"
  },
  {
    "title": "Ultimate veg burger with carrot slaw",
    "image": 'assets/images/food4.jpeg',
    "price": 280,
    "info": "A low-fat veggie burger made with sweet potato, quinoa and mushrooms - a change from the standard vegetarian bean burger - make your barbecue menu stand out!",
    "star": "4.6",
    "likes": "956",
    "mes": "403",
    "time": "60m",
    "cal": "310cal",
    "gram": "110g"
  },
  {
    "title": "Sandwich",
    "image": 'assets/images/sandwich.png',
    "price": 240,
    "info": "Pack a flavour punch with this vegan sweet potato, cashew and tofu burger. It takes a little effort, but it's well worth the prep time once you taste it",
    "star": "4.5",
    "likes": "620",
    "mes": "218",
    "time": "35m",
    "cal": "865cal",
    "gram": "180g"
  },
  {
    "title": "ItalianRusoo",
    "image": 'assets/images/ItalianRusoo.png',
    "price": 350,
    "info": "These healthy, falafel-inspired chickpea & coriander burgers are an easy storecupboard supper. Whizz everything together in your food processor then top with punchy red onion and chilli sauce for a hearty veggie main.",
    "star": "4.8",
    "likes": "982",
    "mes": "612",
    "time": "20m",
    "cal": "344cal",
    "gram": "100g"
  },
  {
    "title": "Pulled BBQ & black bean burgers",
    "image": 'assets/images/food4.jpeg',
    "price": 280,
    "info": "Get the kids to help you prep the veg for these family-friendly burgers. These veggie buns have all the comforting textures of meat but are completely vegan.",
    "star": "4.6",
    "likes": "830",
    "mes": "403",
    "time": "45m",
    "cal": "439cal",
    "gram": "180g"
  },
  {
    "title": "Chocolava",
    "image": 'assets/images/Chocolava.png',
    "price": 550,
    "info": "It is baked by adding the cheese as topping over it. The base is perfectly prepared by adding single layer of cheese over it. It is mouth-watering pizza for cheese lovers.",
    "star": "4.6",
    "likes": "853",
    "mes": "352",
    "time": "60m",
    "cal": "440cal",
    "gram": "210g"
  },           // pizza
  {
    "title": "Chocochees",
    "image": 'assets/images/Chocochees.png',
    "price": 450,
    "info": "There’s a reason this is one of the most popular types of pizza. Who doesn’t love biting into a crispy, salty round of pepperoni?",
    "star": "4.3",
    "likes": "985",
    "mes": "256",
    "time": "50m",
    "cal": "460cal",
    "gram": "190g"
  },
  {
    "title": "Donuts",
    "image": 'assets/images/Donuts.png',
    "price": 600,
    "info": "If you love BBQ and you love pizza, why not put them together? The topping over the top of a pie gives it a tangy, sweet flavor that can’t be beaten.",
    "star": "4.7",
    "likes": "963",
    "mes": "612",
    "time": "90m",
    "cal": "680cal",
    "gram": "250g"
  },
  {
    "title": "Nutpie",
    "image": 'assets/images/Nutpie.png',
    "price": 660,
    "info": "The “supreme” refers to the litany of toppings that come scattered on these pies, from sausage to vegetables to pepperoni. And it’s the combination of the flavors that really makes it sing.",
    "star": "4.6",
    "likes": "756",
    "mes": "327",
    "time": "80m",
    "cal": "582cal",
    "gram": "240g"
  },
  {
    "title": "Chocochees",
    "image": 'assets/images/Chocochees.png',
    "price": 450,
    "info": "There’s a reason this is one of the most popular types of pizza. Who doesn’t love biting into a crispy, salty round of pepperoni?",
    "star": "4.3",
    "likes": "985",
    "mes": "256",
    "time": "50m",
    "cal": "460cal",
    "gram": "190g"
  },
  {
    "title": "Donuts",
    "image": 'assets/images/Donuts.png',
    "price": 600,
    "info": "If you love BBQ and you love pizza, why not put them together? The topping over the top of a pie gives it a tangy, sweet flavor that can’t be beaten.",
    "star": "4.7",
    "likes": "963",
    "mes": "612",
    "time": "90m",
    "cal": "680cal",
    "gram": "250g"
  },
  {
    "title": "Frenchfries",
    "image": 'assets/images/fries.png',
    "price": 280,
    "info": "it’s full of flavor from an incredible herbed goat cheese spread and tangy pickled radishes. The bell peppers are broiled simply, and a vibrant combination with the other veggies!",
    "star": "4.1",
    "likes": "630",
    "mes": "358",
    "time": "20m",
    "cal": "458cal",
    "gram": "110g"
  },          // sandwich
  {
    "title": "HamBurger",
    "image": 'assets/images/HamBurger.png',
    "price": 300,
    "info": "A vegetarian riff on a classic chicken salad sandwich, this chickpea version is very lunch-friendly.",
    "star": "4.3",
    "likes": "562",
    "mes": "176",
    "time": "30m",
    "cal": "546cal",
    "gram": "124g"
  },
  {
    "title": "Italiannochos",
    "image": 'assets/images/Italiannochos.png',
    "price": 240,
    "info": "It features crunchy fritters, ultra soft flatbread, crunchy veggies and creamy, garlicky sauces...it’s pretty much the ultimate sandwich.",
    "star": "4.5",
    "likes": "286",
    "mes": "135",
    "time": "50m",
    "cal": "352cal",
    "gram": "168g"
  },
  {
    "title": "Frenchfries",
    "image": 'assets/images/fries.png',
    "price": 280,
    "info": "it’s full of flavor from an incredible herbed goat cheese spread and tangy pickled radishes. The bell peppers are broiled simply, and a vibrant combination with the other veggies!",
    "star": "4.1",
    "likes": "630",
    "mes": "358",
    "time": "20m",
    "cal": "458cal",
    "gram": "110g"
  },          // sandwich
  {
    "title": "HamBurger",
    "image": 'assets/images/HamBurger.png',
    "price": 300,
    "info": "A vegetarian riff on a classic chicken salad sandwich, this chickpea version is very lunch-friendly.",
    "star": "4.3",
    "likes": "562",
    "mes": "176",
    "time": "30m",
    "cal": "546cal",
    "gram": "124g"
  },
  {
    "title": "Italiannochos",
    "image": 'assets/images/Italiannochos.png',
    "price": 240,
    "info": "It features crunchy fritters, ultra soft flatbread, crunchy veggies and creamy, garlicky sauces...it’s pretty much the ultimate sandwich.",
    "star": "4.5",
    "likes": "286",
    "mes": "135",
    "time": "50m",
    "cal": "352cal",
    "gram": "168g"
  },
  {
    "title": "Burgerspring" ,
    "image": 'assets/images/Burgerspring.png',
    "price": 250,
    "info": "This is a Indo chinese hakka noodles where noodles are toasted with garlic and vegetables.",
    "star": "4.5",
    "likes": "548",
    "mes": "156",
    "time": "30m",
    "cal": "289cal",
    "gram": "110g"
  },          // noodles
  {
    "title": "Martinarolls",
    "image": 'assets/images/Martinarolls.png',
    "price": 240,
    "info": "A popular and flavoured noodles recipe made with thin noodles and schezwan sauce. it is popular street food in india which can be served as a party starter or even as a meal for lunch and dinner.",
    "star": "4.3",
    "likes": "689",
    "mes": "352",
    "time": "30M",
    "cal": "269cal",
    "gram": "120g"
  },
  {
    "title": "Malausian noodles",
    "image": 'assets/images/food7.jpeg',
    "price": 280,
    "info": " A thrilling culinary adventure, the Malaysian Noodles is further enhanced with flavourful additions like garlic, soy sauce, lemon juice.",
    "star": "4.4",
    "likes": "693",
    "mes": "352",
    "time": "35m",
    "cal": "452cal",
    "gram": "130g"
  },
  {
    "title": "Chinese noodles",
    "image": 'assets/images/food2.jpeg',
    "price": 350,
    "info": "This unique Chinese noodles is made with fried noodles,tossed with colorful sauteed veggies and garnished with cruncy spring onion.",
    "star": "4.2",
    "likes": "460",
    "mes": "352",
    "time": "25m",
    "cal": "403cal",
    "gram": "140g"
  },
  {
    "title": "Martinarolls",
    "image": 'assets/images/Martinarolls.png',
    "price": 240,
    "info": "A popular and flavoured noodles recipe made with thin noodles and schezwan sauce. it is popular street food in india which can be served as a party starter or even as a meal for lunch and dinner.",
    "star": "4.3",
    "likes": "689",
    "mes": "352",
    "time": "30M",
    "cal": "269cal",
    "gram": "120g"
  },
  {
    "title": "Malausian noodles",
    "image": 'assets/images/food7.jpeg',
    "price": 280,
    "info": " A thrilling culinary adventure, the Malaysian Noodles is further enhanced with flavourful additions like garlic, soy sauce, lemon juice.",
    "star": "4.4",
    "likes": "693",
    "mes": "352",
    "time": "35m",
    "cal": "452cal",
    "gram": "130g"
  },
];

class _HomeMenuState extends State<HomeMenu> {
  List<Map> breakfast = [{'img':'assets/images/ItalianRusoo.png','name':'Italian Rusoo','dis':'254m','Price':1050},
    {'img':'assets/images/sandwich.png','name':'Sand Wich','dis':'250m','Price':550},
    {'img':'assets/images/food4.jpeg','name':'Veg Salad','dis':'220m','Price':330},
    {'img':'assets/images/sandwich.png','name':'Sand Wich','dis':'150m','Price':550},
    {'img':'assets/images/ItalianRusoo.png','name':'Italian Rusoo','dis':'254m','Price':1050},
    {'img':'assets/images/food4.jpeg','name':'Veg Salad','dis':'160m','Price':330},
  ];
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
  int index=0;
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
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(Data[index++])));
                                },
                                child: Container(
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
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(Data[index++])));
                                },
                                child: Container(
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
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(Data[index++])));
                                },
                                child: Container(
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
                                                data[2]['name'],
                                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                data[2]['des'],
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
                                                    Text(                                              data[2]['dis']
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
                                                    Text(                                              data[2]['per']
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
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(

                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(Data[index++])));
                                },
                                child: Container(
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
                                                data[3]['name'],
                                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                data[3]['des'],
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
                                                    Text(                                              data[3]['dis']
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
                                                    Text(                                              data[3]['per']
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

                              ),
                              InkWell(

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
  final int index =0;

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(Data[index])));
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

