import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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


class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}
class _Sign_InState extends State<Sign_In> {

  String? gender;
  bool valuefirst = false;
  TextEditingController dateInput = new TextEditingController();
  void initState(){
    dateInput.text="";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        Container(
          child: Column(
            children: [

              Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(height: 7,),
                          Text("Add ditals to Sign Up",style: TextStyle(fontSize: 14,color: Colors.white),)
                        ],
                      ),
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(107, 0, 0, 1),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(160),bottomLeft: Radius.circular(160),)
                      ),
                    ),//Sign Up text 
                    Container(
                      height: 595,
                      margin: EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  hintText: "Enter your name",
                                  labelText: "Name",
                                  prefixIcon: Icon(Icons.person_outline)
                                ),
                              ),
                            ),//name
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your email",
                                    labelText: "Email",
                                    prefixIcon: Icon(Icons.email_outlined)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your Mobile Number",
                                    labelText: "Phone",
                                    prefixIcon: Icon(Icons.call_outlined)
                                ),
                              ),
                            ),
                            Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: TextField(
                                 controller: dateInput,
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                   ),
                                   // icon: Icon(Icons.calendar_month_outlined),
                                   labelText: "Date",
                                     prefixIcon: Icon(Icons.date_range_outlined)
                                 ),
                                 onTap: () async {
                                   DateTime? pickedDate = await showDatePicker(
                                       context: context,
                                       initialDate: DateTime.now(),
                                       firstDate: DateTime(2000),
                                       lastDate: DateTime(2050),
                                   );
                                   if(pickedDate != null){
                                     setState(() {
                                       dateInput.text= DateFormat('yyyy-MM-dd').format(pickedDate);
                                     });
                                   }
                                 },
                               ),
                             ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your Hobbies",
                                    labelText: "Hobbies",
                                    prefixIcon: Icon(Icons.note_alt_outlined)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            Row(children: [
                              Checkbox(value: this.valuefirst, onChanged: (value){
                                setState(() {
                                  this.valuefirst=value!;
                                });
                              }),
                              Text("Accept All"),
                              SizedBox(width: 5,),
                              Text("Tearm & Condition",style: TextStyle(decoration: TextDecoration.underline)),
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child:Container(
                                  height: 40,
                                  margin: EdgeInsets.only(top:20),
                                  width: 250,
                                  child:ElevatedButton(
                                    onPressed:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home_Page()));
                                    },

                                    child: Text('SUBMIT',style: TextStyle(fontSize: 14,color: Colors.white)),
                                    style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all(Colors.black54),
                                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(107, 0 , 0, 1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          side: BorderSide(color:Colors.transparent),
                                        ))
                                    ),

                                  )
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromRGBO(107, 0, 0, 1)
                    ),
                    width: 400,
                    height: 50,
                    child:Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          child: Text('Already have an Account?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Colors.white ),),
                        ), //line before login
                        Container(
                            margin: EdgeInsets.only(left: 5),
                            child: new GestureDetector(
                              onTap: (){

                              },
                              child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Color.fromRGBO(254, 132 , 132, 1) ),),
                            )

                        ), // login text
                      ],
                    )
                ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

class Log_In extends StatefulWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  State<Log_In> createState() => _Log_InState();
}

bool pass=true;
String? arr,err;
String email="";
String password="";
String phone="";
TextEditingController email_login=TextEditingController();
TextEditingController pass_login=TextEditingController();
class _Log_InState extends State<Log_In> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top:50),
              height: 150,
              width: 150,
              child: Image(image: AssetImage('assets/images/khana_png.png'),fit: BoxFit.fitWidth,)
          ),
          Container(
            margin: EdgeInsets.only(top:10,left: 70),
            height: 45,
            width: 150,
            // color: Colors.red,
            child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontWeight:FontWeight.bold,fontSize: 30,color:  Color.fromRGBO(107, 0 , 0, 1),),),
          ) ,
          Container(
            height: 20,
            // color: Colors.yellow,
            margin: EdgeInsets.only(),
            child: Text('Add Your Detail To Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 12,color:  Color.fromRGBO(107, 0 , 0, 1) ),),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(top:20),
            width: 300,
            child: TextField(
              controller: email_login,
              onChanged: (val){
                err=(val.length<10)?"Enter valid input":null;
                setState(() {

                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter Email",
                labelText: "Email",
                errorText: err,
                prefixIcon: Icon(Icons.email_outlined,color: Color.fromRGBO(107, 0 , 0, 1),)
              ),
            )
          ),
          Container(
              height: 70,
              margin: EdgeInsets.only(top:8),
              width: 300,
              child: TextField(
                controller: pass_login,
                onChanged: (val){
                  arr=(val.length<8)?"Enter valid password":null;
                  setState((){
                  });
                },
                obscureText: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Enter Password",
                  labelText: "Password",
                  errorText: arr,
                  prefixIcon: Icon(Icons.password_outlined,color: Color.fromRGBO(107, 0 , 0, 1),),
                  suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye,color:Color.fromRGBO(107, 0 , 0, 1) ,),onPressed: () {
                    setState(() {
                      pass=!pass;
                    });
                  })
                ),
              )
          ),
          Container(
              height: 40,
              margin: EdgeInsets.only(top:20),
              width: 250,
              child:ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home_Page()));
                },

                child: Text('SUBMIT',style: TextStyle(fontSize: 14,color: Colors.white)),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(107, 0 , 0, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    ))
                ),

              )
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(top:15),
              child: GestureDetector(
                onTap: (){
                  null;
                },
                child: Text('Forgot Your Password?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color:  Color.fromRGBO(107, 0 , 0, 1) ),),
              )

          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 2,
                  width: 100,
                  margin: EdgeInsets.only(left: 30),
                    color:  Color.fromRGBO(107, 0 , 0, 1)
                ),
                Container(
                  height: 50,
                  width: 95,
                  padding: EdgeInsets.only(top:15,left: 6),
                  // color: Colors.cyan,
                  child: Text('Or Login With',style: TextStyle(color:  Color.fromRGBO(107, 0 , 0, 1)),),),
                Container(
                  height: 2,
                  width: 105,color:  Color.fromRGBO(107, 0 , 0, 1),
                ),
              ],
            ),


          ),
          Container(
              height: 45,
              margin: EdgeInsets.only(top:10),
              width: 250,
              child:ElevatedButton.icon(
                onPressed:(){},
                icon: Icon(Icons.facebook,size: 24,color:  Colors.white),
                label: Text("Login With Facebook",style: TextStyle(color:  Colors.white),),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    ))
                ),

              )
          ),
          Container(
              height: 45,
              margin: EdgeInsets.only(top:10),
              width: 250,
              child:ElevatedButton.icon(
                onPressed:(){},
                icon: Icon(Icons.golf_course_outlined,size: 24,color: Colors.white),
                label: Text("Login With Google    ",style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color:Colors.transparent),
                  )),
                ),

              )
          ),
          Container(
              height: 40,
              margin: EdgeInsets.only(top:10),
              width: 300,
              child:Row(
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top:10,left: 45),
                    child: Text("Don't have account?",style: TextStyle(fontFamily: 'FontMain',fontSize: 16 ),),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.only(top:10,left: 5),
                      child: new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_In()));
                        },
                        child: Text('Sign Up',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color:Color.fromRGBO(107, 0 , 0, 1) ),),
                      )

                  ),
                ],
              )
          ),
        ],
      ),
    );//login page
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int currentIndex = 0;

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
      ),//drawer menu
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 360,
            height: 656,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        child: ListView(
                          children: [
                            SizedBox(height: 200,
                            width: double.infinity,
                            child: Carousel(
                                dotSize: 7.0,
                              dotColor: Color.fromRGBO(250, 240 , 240, 1),
                              dotIncreasedColor: Color.fromRGBO(107, 0 , 0, 1),
                              dotBgColor: Colors.transparent,
                              dotSpacing: 15.0,
                              dotPosition: DotPosition.bottomCenter,
                              images:[
                                Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
                                Image.asset('assets/images/poster2.jpg',fit: BoxFit.cover,),
                                Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
                                Image.asset('assets/images/poster1.jpg',fit: BoxFit.cover,),
                                Image.asset('assets/images/poster3.jpg',fit: BoxFit.cover,),
                                Image.asset('assets/images/poster2.jpg',fit: BoxFit.cover,),
                              ]
                            ),
                            )
                          ],
                        ),
                ),
                    ),
                    Container(height: 300,child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(height: 44,child: Text("Explore Menu",style: TextStyle(color:Color.fromRGBO(107,0,0,1),fontSize: 16,fontWeight: FontWeight.bold),),alignment: Alignment.centerLeft,),
                        ),
                        Container(height: 232,child: Padding(
                          padding: const EdgeInsets.only(left: 14.0,right: 14),
                          child:
                          Column(children: [
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
                                      width: 110.30,height: 109,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(
                                                  5.0,0.0
                                              ),
                                              color: Color.fromRGBO(107, 0 , 0, 0.1),
                                              blurRadius: 20.0,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food1.jpeg'),),
                                            SizedBox(height: 5,),
                                            Text("Veg Momos",style: TextStyle(color:Color.fromRGBO(107,0,0,1),),)
                                          ],
                                        ),
                                      )),
                                  onTap: (){},
                                ),
                                InkWell(
                                  child:Container(width: 110.30,height: 116,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(
                                                  5.0,0.0
                                              ),
                                              color: Color.fromRGBO(107, 0 , 0, 0.1),
                                              blurRadius: 20.0,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),

                                      child:
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food2.jpeg'),),
                                            SizedBox(height: 5,),
                                            Text("Veg Frankie",style: TextStyle(color:Color.fromRGBO(107,0,0,1),))
                                          ],
                                        ),
                                      )),
                                  onTap: (){},
                                ),
                                InkWell(
                                  child: Container(width: 110.30,height: 116,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(
                                                  5.0,0.0
                                              ),
                                              color: Color.fromRGBO(107, 0 , 0, 0.1),
                                              blurRadius: 20.0,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),

                                      child:
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food4.jpeg'),),
                                            SizedBox(height: 5,),
                                            Text("Salad",style: TextStyle(color:Color.fromRGBO(107,0,0,1),))
                                          ],
                                        ),
                                      )),
                                  onTap: (){},
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
                                    width: 110.30,height: 116,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(
                                                5.0,0.0
                                            ),
                                            color: Color.fromRGBO(107, 0 , 0, 0.1),
                                            blurRadius: 20.0,
                                            spreadRadius: 1,
                                          )
                                        ]
                                    ),

                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food5.jpeg'),),
                                          SizedBox(height: 5,),
                                          Text("Veg Burger",style: TextStyle(color:Color.fromRGBO(107,0,0,1),))
                                        ],
                                      ),
                                    )),
                                  onTap: (){},
                                ),
                                InkWell(
                                  child:Container(width: 110.30,height: 116,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(
                                                5.0,0.0
                                            ),
                                            color: Color.fromRGBO(107, 0 , 0, 0.1),
                                            blurRadius: 20.0,
                                            spreadRadius: 1,
                                          )
                                        ]
                                    ),

                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food7.jpeg'),),
                                          SizedBox(height: 5,),
                                          Text("Pizza Mania",style: TextStyle(color:Color.fromRGBO(107,0,0,1),))
                                        ],
                                      ),
                                    )) ,
                                  onTap: (){},
                                ),
                                InkWell(
                                  child: Container(width: 110.30,height: 116,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(
                                                5.0,0.0
                                            ),
                                            color: Color.fromRGBO(107, 0 , 0, 0.1),
                                            blurRadius: 20.0,
                                            spreadRadius: 1,
                                          )
                                        ]
                                    ),

                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/food8.jpeg'),),
                                          SizedBox(height: 5,),
                                          Text("Russian Salad",style: TextStyle(color:Color.fromRGBO(107,0,0,1),))
                                        ],
                                      ),
                                    )),
                                  onTap: (){},
                                ),
                              ],
                            ),
                          ],),
                        ),
                        ),
                      ],
                    ),),
                    Padding(padding: EdgeInsets.all(8.0),
                      child:Container(
                          width: 350,
                          height: 100,
                          // color: Colors.redAccent,
                          child: Image(image: AssetImage('assets/images/poster4.jpg'),fit: BoxFit.cover,),
                        ),
                        ),
                    Container(height: 200,
                    child: Column(
                      children: [Container(
                            height: 30,child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("    Offers",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color.fromRGBO(107, 0, 0, 1)),),
                              SizedBox(width: 230,),
                              TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(fontWeight:FontWeight.w400,color: Color.fromRGBO(15, 82,186, 1)),)),
                              SizedBox()
                            ],
                          ),
                            alignment: Alignment.centerLeft,),
                        Container(
                          height: 160,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height: 200,color: Colors.black12,child:Container(
                                    width: 195,
                                    height: 145,
                                    // color: Colors.redAccent,
                                    child: Image(image: AssetImage('assets/images/poster5.png'),fit: BoxFit.fill,),
                                  ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height:200,color: Colors.black54,
                                    child: Image(image: AssetImage('assets/images/poster6.jpg'),fit: BoxFit.cover,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height:200,color: Colors.black26,
                                    child: Image(image: AssetImage('assets/images/poster7.png'),fit: BoxFit.fill,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height:200,color: Colors.black38,
                                    child: Image(image: AssetImage('assets/images/poster2.jpg'),fit: BoxFit.fill,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10,right: 8),
                                  child: Container(width: 300,height:200,color: Colors.black12,
                                    child: Image(image: AssetImage('assets/images/poster3.jpg'),fit: BoxFit.cover,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height:200,color: Colors.black26,
                                    child: Image(image: AssetImage('assets/images/poster1.jpg'),fit: BoxFit.cover,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10),
                                  child: Container(width: 300,height:200,color: Colors.black38,
                                    child: Image(image: AssetImage('assets/images/poster2.jpg'),fit: BoxFit.cover,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 10,right: 8),
                                  child: Container(width: 300,height:200,color: Colors.black12,
                                    child: Image(image: AssetImage('assets/images/poster3.jpg'),fit: BoxFit.cover,),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,child: Text("Explore Menu",style: TextStyle(color:Color.fromRGBO(107,0,0,1),fontSize: 16,fontWeight: FontWeight.bold),),
                        alignment: Alignment.centerLeft,),
                    ),
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
                    SizedBox(height: 150,),                  ],
                ),
              ),

          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color.fromRGBO(107, 0, 0, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Color.fromRGBO(107, 0, 0, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Order',
          backgroundColor: Color.fromRGBO(107, 0, 0, 1),
        )
        ,
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Color.fromRGBO(107, 0, 0, 1),
        )
      ],
        onTap: (index){
          currentIndex=index;
        },
      ),
    );
  }
}

class FoodMenu extends StatefulWidget {
  const FoodMenu({Key? key}) : super(key: key);

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("I am milan")),
    );
  }
}









