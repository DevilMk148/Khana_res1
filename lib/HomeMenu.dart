import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            onTap: (){},
                          ),
                          InkWell(onTap: (){},
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/food.png'),height: 60,width: 80,),
                                SizedBox(height: 10,),
                                Text("Dinner")
                              ],
                            ),
                          ),
                          InkWell(onTap: (){},
                            child: Column(
                              children: [
                                Image(image: AssetImage('assets/images/lunch.png'),height: 60,width: 80,),
                                SizedBox(height: 10,),
                                Text("Lunch")
                              ],
                            ),
                          ),
                          InkWell(onTap: (){},
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
