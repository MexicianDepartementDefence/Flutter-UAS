// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:splash_screen/Inspirasi.dart';
import 'package:splash_screen/homeIkea.dart';
import 'package:splash_screen/profil.dart';
import 'package:splash_screen/wishlist.dart';

class HomeIkea extends StatefulWidget {
  @override
  State<HomeIkea> createState() => _HomeIkeaState();
}

class _HomeIkeaState extends State<HomeIkea> {
  int indexiseng = 0;
  void stateIseng(int index) {
    setState(() {
      indexiseng = index;
    });
  }

  static List<Widget> isiWidget = <Widget>[
    Home(),
    Inspirasi(),
    Wishlist(),
    Profil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isiWidget.elementAt(indexiseng),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xff1B1B1B),
          selectedItemColor: Color(0xff0058AB),
          onTap: stateIseng,
          currentIndex: indexiseng,
          unselectedLabelStyle:
              TextStyle(color: Color(0xff6C6C6C), fontWeight: FontWeight.w400),
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Beranda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.coffee_outlined), label: "Inspirasi"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Wishlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Profil"),
          ]),
    );
  }
}
