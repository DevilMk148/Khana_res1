import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  // Map pizza;

  // Detail(this.pizza);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  // int quantity = 1;
  // int? price ;
  // bool like = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/images/bg/burger_bg.png'),
                  alignment: Alignment.topCenter,
                  scale: 0.1
              ),
            ),

          )),
    );
  }
}
//
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// children: [
// Text(
// '\$' + widget.pizza['Price'].toString(),style: TextStyle(color: Colors.white),
// ),
// Text(
// "Per Quantity",style: TextStyle(color: Colors.white),
// )
// ],
// ),
// Container(
// // height: 34,
// //width: 140,
// decoration: BoxDecoration(
// color: Colors.lightBlue,
// borderRadius: BorderRadius.circular(26)),
//
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Padding(
// padding: const EdgeInsets.only(right: 8.0),
// child: InkWell(
// onTap: () {
// quantity > 1 ? quantity-- : null;
// price = widget.pizza['Price'] * quantity;
// setState(() {});
// },
// child: Container(
// height: MediaQuery.of(context).size.height * .07,
// width: MediaQuery.of(context).size.width * .15,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(250),
// color: Colors.white60),
// child: Icon(Icons.remove)),
// ),
// ),
// Text(
// "$quantity",
// ),
// Padding(
// padding: const EdgeInsets.only(left: 8.0),
// child: InkWell(
// onTap: () {
// quantity < 10 ? quantity++ : null;
// price = widget.pizza['Price'] * quantity;
// setState(() {});
// },
// child: Container(
// height: MediaQuery.of(context).size.height * .07,
// width: MediaQuery.of(context).size.width * .15,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(250),
// color: Colors.white60),
// child: Icon(Icons.add)),
// ),
// ),
//
// ],
// ),
// ),
// Positioned(
// top: 8,
// right: 1,
// child: IconButton(onPressed: (){
// like = !like;
// setState(() {
// });
// }, icon: like ? Icon(Icons.favorite_border,size: 34,) : Icon(Icons.favorite,size: 34,color: Colors.red,)
// )),
// Text(
// "Total amount",style: TextStyle(color: Colors.white),
// ),
// quantity != 1
// ? Text(
// "\$$price",style: TextStyle(color: Colors.white),
// )
// : Text(
// "\$" + widget.pizza['Price'].toString(),style: TextStyle(color: Colors.white),
// ),
// ],
// ),
