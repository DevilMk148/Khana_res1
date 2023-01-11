import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:khana/Sign_up.dart';

import 'main.dart';

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