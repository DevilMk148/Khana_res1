import 'package:flutter/material.dart';
import 'package:khana/firebase_dbfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  firebase_db db=new firebase_db();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 300,
        child: GridView.builder(
          itemCount: db.data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
            },
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(db.data[index]['email'],style: TextStyle(color: Colors.black),),
                  Text(db.data[index]['pass']),
                  Text(db.data[index]['key']),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
