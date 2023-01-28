import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class firebase_db {
  List<Map> data = [];
  FirebaseDatabase database = FirebaseDatabase.instance;
  String selectedKey = '';

  insert(TextEditingController emailController,TextEditingController passController){
    String? key = database.ref('User').push().key;
    database.ref('User').child(key!).set({
      'email': emailController.text,
      'pass': passController.text,
      'key': key,
    });
  }

  select() async {
    DatabaseEvent d = await database.ref('User').once();
    Map temp = d.snapshot.value as Map;
    data.clear();
    temp.forEach((key, value) {
      data.add(value);
    });
  }

}
