import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:khana/HomeMenu.dart';
import 'package:khana/Log_in.dart';
import 'package:khana/firebase_dbfile.dart';
import 'package:khana/profile_page.dart';

import 'main.dart';


class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool valuefirst = false;
GlobalKey<FormState> signin= GlobalKey<FormState>();

void valid(){
  if(signin.currentState!.validate()){
        db.insert(email,phone,passt,name,date,gender);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                const HomeMenu()));
  }
  else{
    print("not");
  }
}

  void initState() {
    dateInput.text = "";
    super.initState();
  }
  String? arr,prr,nrr,passrr ;
  var email,phone,name,passt,date,gender="";
  bool validator = true;
  bool pass=true;
  bool nameb=false;
  TextEditingController EmailController=new TextEditingController();
  TextEditingController NameController=new TextEditingController();
  TextEditingController PassController=new TextEditingController();
  TextEditingController phoneController=new TextEditingController();
  TextEditingController dateInput = new TextEditingController();



  firebase_db db=new firebase_db();


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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Form(
                    key: signin,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8,left: 4,right: 4,bottom: 4),
                          child: TextFormField(
                              controller: NameController,
                              keyboardType: TextInputType.text,

                              onChanged: (val){
                                val.length <=4 ? nameb = false : nameb = true;
                                // setState(() {});
                                if(NameController.text.length>=5){
                                  name=NameController.text;
                                  setState(() {

                                  });
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                prefixIcon: Icon(Icons.perm_identity,color: Color.fromRGBO(107, 0, 0, 1),),
                                hintText: 'please enter Name',
                                labelText: 'Name',
                                errorText: NameController.text.length <=4 ? (nameb ?
                                nrr = 'Enter Valid Name' : null) : null,
                              ),
                            validator: (value){
                                if(value!.isEmpty){
                                  return 'Enter Valid Name';
                                }
                                return null;
                            },
                          ),

                        ), //name
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Enter Valid Email';
                                }
                                return null;
                              },
                              controller: EmailController,
                              keyboardType: TextInputType.emailAddress,

                              onChanged: (val){
                                // arr=(val.length<=10)?'enter a valid email*':null;
                                // setState(() {});
                                // if(EmailController.text.length>10){
                                //   email=EmailController.text;
                                //   setState(() {
                                //
                                //   });
                                // }
                                val.contains('@gmail.com') ? validator = false : validator = true;
                                setState(() {
                                  email = EmailController.text;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                prefixIcon: Icon(Icons.email,color: Color.fromRGBO(107, 0, 0, 1),),
                                hintText: 'please enter Email',
                                labelText: 'Email',
                                errorText: EmailController.text.length > 0 ? (validator ?
                                arr = 'Enter Valid Email' : null) : null,
                              )),
                        ),// String data as email
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter Valid Phonenumber';
                              }
                              return null;
                            },
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
                              prefixIcon: Icon(Icons.phone,color: Color.fromRGBO(107, 0, 0, 1),),
                              hintText: 'please enter Mobile No.',
                              counterText: "",
                              labelText: 'Phone',
                              errorText: prr,
                            ),keyboardType: TextInputType.number
                            ,
                            maxLength: 10,
                          ),
                        ),// String data as phone
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value){
                              if(dateInput.text!.isEmpty){
                                return 'Enter Valid Date';
                              }
                              return null;
                            },
                            controller: dateInput,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                // icon: Icon(Icons.calendar_month_outlined),
                                labelText: "Date",
                                prefixIcon:
                                    Icon(Icons.date_range_outlined,color: Color.fromRGBO(107, 0, 0, 1),
                            )),
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
                                date = dateInput.text;
                              }
                            },
                          ),
                        ),// String data as date
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter Valid Password';
                              }
                              return null;
                            },
                            controller: PassController,
                            onChanged: (val) {
                              if(PassController.text.length==10){
                                passt=PassController.text;
                                setState(() {

                                });
                              }
                              passrr = (val.length < 8) ? "Enter valid password" : null;
                              setState(() {});
                            },
                            obscureText: pass,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Enter Password",
                                labelText: "Password",
                                errorText: passrr,
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Color.fromRGBO(107, 0, 0, 1),
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Color.fromRGBO(107, 0, 0, 1),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        pass = !pass;
                                      });
                                    })),
                          )
                        ),//string data as passt
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Gender : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                              Radio(value: "male", groupValue: gender, onChanged: (val){
                                setState(() {
                                  gender=val.toString();
                                });
                              }),Text("Male"),
                              SizedBox(width:10,),

                              Radio(value: "female", groupValue: gender, onChanged: (val){
                                setState(() {
                                  gender=val.toString();
                                });
                              }),Text("Female")
                            ],
                          ),
                        ),//string data as gender
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
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TermAndCondition()));
                              },
                              child: Text("Tearm & Condition",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                              height: 40,
                              margin: EdgeInsets.only(top: 20),
                              width: 250,
                              child: ElevatedButton(
                                // onPressed: () {
                                //
                                //     // db.insert(email,phone,passt,name,date,gender);
                                //     // Navigator.push(
                                //     //     context,
                                //     //     MaterialPageRoute(
                                //     //         builder: (context) =>
                                //     //         const HomeMenu()));
                                //
                                // },
                                onPressed: valid,
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
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Log_In()));
                            },
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

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 240, 240, 1),
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
      body: SingleChildScrollView(child: Text('WHAT SHOULD BE THE TERMS AND CONDITIONS OF A FOOD DELIVERY APP? Defining the business and business objective. Food delivery is a retail business whereby the “Goods” are sold to the public through E-commerce is a relatively small quantity for consumption and from here the role of Food Aggregators or Food Delivery Platform begins. Food Aggregators or Food Delivery Platform are the companies that provide a platform for restaurants on their domain to reach out to the consumers online. These Food Aggregators provide or Food Delivery Platform its consumers mainly with the following services: Allow for easy search of the restaurant nearby or wherever ; Allows for home-delivery Allow for its subscribers/members to go eat food in the restaurant itself at an extremely discounted price (inclusive of food and drink) means buying or selling goods or services including digital products over a digital or electronic network. The entry of e-commerce has expanded that scope of the CPA, 2019, enabling the consumers’ to hold Food Aggregators or Food Delivery Platforms liable for the violation of their rights. It is very evident that there is a shift from caveat emptor (buyer beware) to caveat venditor (seller beware). In light of the above-provided transition, any Food Delivery Platform (“hereinafter referred to as “FDP”) must bear in mind the following clauses, while drafting its terms and conditions for its food delivery business. 1.  Eligibility: The User must undertake to adhere to the eligibility to enter into a contract in view of section 11 of The Indian Contract Act, 1872. The User shall agree to represent and warrant that the User is at the age of 18 or above and is fully able and competent to understand and agree the terms, conditions, obligations, affirmations, representation, and warranties as set forth in this Agreement. 2. Compliance of Law:  Both the User and the Food Delivery Platform must be in compliance with all laws and regulations in the country in which they live while accessing and using the Service. The User must agree to use the Services only in compliance with terms & conditions, applicable law, and in a manner that does not violate legal rights or those of any third party/parties. 3. Legal implications of online food ordering:  Every FDP shall state in its Agreement that it provides online food ordering services by entering into contractual arrangements with Restaurants on a principal to principal basis for the purpose of listing their food and beverages for online ordering by the Users on the FDP (“Restaurant Partners”). Users can access the list of food and beverages of the Restaurant Partners listed on FDP and place orders against the Restaurant Partners through Food Delivery Platform which the Restaurant Partner may or may not accept at its absolute discretion. 4. TERMS OF SERVICE OF FDP: 1) The FDP shall make it clear that it is not either a  manufacturer or a seller or distributor of food or beverages but only places an order against the partner restaurant on behalf of the User customer pursuant to the aforesaid contract and facilitate the sale and purchase of food and beverages between the two, under the contract for sale and purchase of food and beverages. 2) The FDP shall not be liable for any actions or omissions by the Restaurant Partners including deficiency in service, wrong delivery or order, quality of food, time is taken to prepare or deliver the order, etc. 3) The FDP must state that the liability of any violation of the Food Safety and Standards Act, 2006 and applicable rules and regulations made thereunder shall solely be towards the seller/owners, vendors, Restaurant Partners, importer or manufacturers of the food products. 4) The FDP must provide a disclaimer in respect of some of the food that may be suitable for certain ages only. It must be the responsibility of Users to check the food they are ordering and read its description, if provided, before placing an order on FDP.  Food Delivery Platform shall not be liable in the event food ordered by User does not meet User’s dietary or any other requirements and/or restrictions. 5) The acceptance by a Delivery Partner of undertaking delivery of User’s order shall constitute a contract of service under the Consumer Protection Act, 2019 or any successor legislation, between the User and the Delivery Partner, to which again food Delivery Platform is not a party. 6) The FDP must clarify that FDP does not provide any delivery or logistics services and only enables the delivery of food and beverages ordered by the Users through FDP by connecting User with Delivery Partners or the Restaurant Partners, as the case may be. 7) The FDP must state that it will use reasonable efforts to inform the User of the Delivery Charges that may apply to the User, provided the User will be responsible for Delivery Charges incurred for User’s order regardless of User’s awareness of such Delivery Charges. 8) The FDP shall reserve it’s right that at any time and without prior notice, the Food Delivery Platform can remove, block, or disable access to any Content, for any reason or no reason, considered to be objectionable, in violation of the terms and conditions of this Agreement or otherwise harmful to the Services. 9) Intellectual & Proprietary Rights: The Food Delivery Platform shall declare in the form of a clause its ownership of FDP content and Proprietary Rights in detail every user must agree to protect FDP’S IPR and proprietary rights. 10) Use of License aspects: Food Delivery Platform shall grant User a personal, limited, non-exclusive, and non-transferrable license to access and use the Services only as expressly permitted as per the terms and conditions of the Agreement. The user shall  agree not to use the services for any illegal purpose or in any manner inconsistent with the terms and conditions of this Agreement 11) Review and Ratings: The review or ratings for a restaurant by Users do not reflect the opinion of FDP. Food Delivery Platform gets many reviews or ratings for Restaurant by User, which reviews or ratings for Restaurants by Users, which shows the views of the User. It is important to state that every review or ratings posted on FDP are the personal views of the User. 12) On-Time Delivery: The User may opt for on-time delivery services offered by the Food Delivery Platform, for an additional non-refundable cost, at selected Restaurants. The User shall, however, acknowledge that such services are offered by the FDP on a best effort basis, hence should the order fail to reach on or prior to the Promise Time, the User would be eligible to receive Coupon worth value or up to INR 200, whichever is lower. The Coupon is required to be claimed within such time as provided from the time such Order is delivered failing which the eligibility to receive Coupon expires. The User shall not be eligible to receive the coupon if Food Delivery Platform fails to deliver such Order within the time provided for unforeseen reasons beyond the control of the food Delivery Platform eg. Strikes, natural disaster, etc. 13) Price List: FDP shall take care to keep all the prices listed are correct at the time of publication, and have been placed as received from the Restaurants. The final price charged to the User may change at the time of delivery. In the event of a conflict between prices of the FDP and price charged by the Restaurant, the price charged by the Restaurant shall be deemed to be the correct price except for the Delivery Charge of Food Delivery Platform. The total price for food ordered, including the Delivery Charges and other charges, will be displayed on the Food Delivery Platform when you place your order, which shall be rounded up to the nearest rupee.  The User shall make full payment towards such food ordered via the FDP. Any amount that may be charged to the User by Food Delivery Platform over and above the order value shall be inclusive of applicable taxes')),
    );
  }
}



