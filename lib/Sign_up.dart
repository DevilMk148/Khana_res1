import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'Home_Page.dart';
import 'main.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  String? gender;
  bool valuefirst = false;
  TextEditingController dateInput = new TextEditingController();

  void initState() {
    dateInput.text = "";
    super.initState();
  }
  String? arr,prr;
  late String email,phone="";
  bool pass=true;
  TextEditingController EmailController=new TextEditingController();
  TextEditingController phoneController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Add ditals to Sign Up",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )
                  ],
                ),
                height: 150,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(107, 0, 0, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(160),
                      bottomLeft: Radius.circular(160),
                    )),
              ), //Sign Up text
              Container(
                height: 595,
                margin: EdgeInsets.only(top: 5),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8,left: 4,right: 4,bottom: 4),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(20)),
                              hintText: "Enter your name",
                              labelText: "Name",
                              prefixIcon: Icon(Icons.person_outline)),
                        ),
                      ), //name
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                            controller: EmailController,
                            onChanged: (val){
                              arr=(val.length<=10)?'enter a valid email*':null;
                              setState(() {});
                              if(EmailController.text.length>10){
                                email=EmailController.text;
                                setState(() {

                                });
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              prefixIcon: Icon(Icons.email),
                              hintText: 'please enter Email',
                              labelText: 'Email',
                              errorText: arr,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: phoneController,
                          onChanged: (val){
                            prr=(val.length<10)?'enter a valid phone number*':null;
                            setState(() {});
                            if(phoneController.text.length==10){
                              phone=phoneController.text;
                              setState(() {

                              });
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'please enter Mobile No.',
                            counterText: "",
                            labelText: 'Phone',
                            errorText: prr,
                          ),keyboardType: TextInputType.number,inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          maxLength: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: dateInput,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // icon: Icon(Icons.calendar_month_outlined),
                              labelText: "Date",
                              prefixIcon:
                                  Icon(Icons.date_range_outlined)),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050),
                            );
                            if (pickedDate != null) {
                              setState(() {
                                dateInput.text = DateFormat('yyyy-MM-dd')
                                    .format(pickedDate);
                              });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(20)),
                              hintText: "Enter your Hobbies",
                              labelText: "Hobbies",
                              prefixIcon: Icon(Icons.note_alt_outlined)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: this.valuefirst,
                              onChanged: (value) {
                                setState(() {
                                  this.valuefirst = value!;
                                });
                              }),
                          Text("Accept All"),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Tearm & Condition",
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            height: 40,
                            margin: EdgeInsets.only(top: 20),
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Home_Page()));
                              },
                              child: Text('SUBMIT',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(
                                          Colors.black54),
                                  backgroundColor:
                                      MaterialStateProperty.all(
                                          Color.fromRGBO(107, 0, 0, 1)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Colors.transparent),
                                  ))),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22,),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                      color: Color.fromRGBO(107, 0, 0, 1)),
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(width: 70,),
                      Container(
                        child: Text(
                          'Already have an Account?',
                          style: TextStyle(
                              fontFamily: 'FontMain',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 5,), //line before login
                      Container(
                          child: new GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontSize: 16,
                                  color:
                                      Color.fromRGBO(254, 132, 132, 1)),
                            ),
                          )), // login text
                    ],
                  )),
            ],
          ),
        )
    );
  }
}
