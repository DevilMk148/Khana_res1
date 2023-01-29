import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khana/profile_page.dart';

import 'HomeMenu.dart';
import 'order_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;

  final tabs=[
    const HomeMenu(),
    const OrderPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(250, 240, 240, 1),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood,),
                label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,),
                label: 'Profile')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,//New
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromRGBO(107, 0, 0, 1),
          // backgroundColor: Color.fromARGB(255, 243, 187, 82),
          //   fixedColor: Color.fromARGB(255, 243, 187, 82)
        ),
        body: tabs[_selectedIndex],

        );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
