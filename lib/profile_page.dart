import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:khana/firebase_dbfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
firebase_db db=new firebase_db();

class _ProfilePageState extends State<ProfilePage> {

  final ref = FirebaseDatabase.instance.ref().child('user');

  @override
  Widget build(BuildContext context) {

    return Container(
  // child: FirebaseAnimatedList(
  //   query: ref,
  // itemBuilder: (BuildContext context,DataSnapshot snapshot, Animation<double> animation, int index){
  //
  //     Map user = snapshot.value as Map;
  //     user['key']=snapshot.key;
  // }),
    );

  }
}
