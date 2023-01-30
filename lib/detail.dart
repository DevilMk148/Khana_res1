import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Detail extends StatefulWidget{

  Map Data;
  Detail(this.Data, {key});

  @override
  State<Detail> createState() => _Detail();
}

class _Detail extends State<Detail> {
  int count = 0;
  int m = 0;

  void increment(s){
    setState(() {
      if(count<10){
        m = s;
        count++;
        m = m * count;
      }
    });
  }
  void decrement(s){
    setState(() {
      m = s;
      if(count>=2){
        count--;
        m = m * count;
      }
    });
  }
  bool _isfavourited = true;
  void changeFavourite() {
    setState(() {
      if (_isfavourited) {
        _isfavourited = false;
      } else {
        _isfavourited = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: CupertinoIconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: (_isfavourited
                  ? const Icon(Icons.favorite_outline_rounded,color: Colors.white,)
                  : const Icon(Icons.favorite,color: Colors.red,)),
              onPressed: changeFavourite,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.Data["image"]),fit: BoxFit.fitHeight)
        ),
        child: Column(
          children: [
            Container(height: 300,),
            Container(height: 483,width: 360,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius:BorderRadiusDirectional.circular(50),),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 50,right: 40),
                  child: SingleChildScrollView(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 15.0,left: 30,bottom: 30),
                          child: Text(widget.Data["title"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),),),
                        Padding(padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text("Info : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),),
                        Text(widget.Data["info"],style: TextStyle(color: Colors.black,fontSize: 15)),
                        Padding(padding: const EdgeInsets.only(top: 15,bottom: 10),
                          child: Text("Reviews : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,)),),
                        Row(children: [
                          Container(child: Row(children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Padding(padding: const EdgeInsets.only(left: 5,right: 40),
                              child: Text(widget.Data["star"],style: TextStyle(fontSize: 18),),),
                            Icon(Icons.favorite,color: Colors.red,),
                            Padding(padding: const EdgeInsets.only(left: 5,right: 40),
                              child: Text(widget.Data["likes"],style: TextStyle(fontSize: 18),),),
                            Icon(Icons.message_outlined,color: Colors.grey,),
                            Padding(padding: const EdgeInsets.only(left: 5),
                              child: Text(widget.Data["mes"],style: TextStyle(fontSize: 18),),),
                          ],),),],),
                        Padding(padding: const EdgeInsets.only(top: 15,bottom: 10),
                          child: Text("About : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,)),),
                        Row(children: [
                          Container(child: Row(children: [
                            Icon(Icons.timer_sharp,color: Colors.grey,),
                            Padding(padding: const EdgeInsets.only(left: 5,right: 40),
                              child: Text(widget.Data["time"],style: TextStyle(fontSize: 18),),),
                            Padding(padding: const EdgeInsets.only(left: 5,right: 40),
                              child: Text(widget.Data["cal"],style: TextStyle(fontSize: 18),),),
                            Padding(padding: const EdgeInsets.only(left: 5),
                              child: Text(widget.Data["gram"],style: TextStyle(fontSize: 18),),),
                          ],),),],),
                        Padding(padding: const EdgeInsets.only(top: 15,bottom: 10),
                          child: Text("Pricing : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),),
                        Row(children: [
                          Row(
                            children: [
                              Container(margin: EdgeInsets.all(1),height: 35,width: 35,
                                child: FloatingActionButton(
                                  heroTag: "btn102",
                                  onPressed: (){decrement(widget.Data["price"]);},
                                  splashColor: Colors.blueGrey,
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.remove,color: Colors.black,),),
                              ),],),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Center(child: Text(" $count ",style: TextStyle(fontSize: 20,color: Colors.black),),),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(1),height: 35,width: 35,
                                child: FloatingActionButton(
                                  heroTag: "btn101",
                                  onPressed: (){increment(widget.Data["price"]);},
                                  splashColor: Colors.blueGrey,
                                  backgroundColor: Colors.orange,
                                  child: Icon(Icons.add,color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text("Total : ",style: TextStyle(fontSize: 20,color: Colors.black),),
                          ),
                          Container(
                            child: Text(" $m₹  ",style: TextStyle(fontSize: 20,color: Colors.black),),
                          ),
                        ],
                        ),
                        Padding(padding: const EdgeInsets.only(top: 20,bottom: 20),
                          child: Container(width: 300,decoration: BoxDecoration(color: Color(0xFFFFAC2F),borderRadius: BorderRadius.circular(30)),
                            child: FloatingActionButton.extended(onPressed: () {},
                              backgroundColor: Colors.orange,
                              heroTag: "btn103",
                              splashColor: Colors.blueGrey,
                              label: Text("ORDER", style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}