// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/ikea.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      loadmainscreen();
    });
  }

  void loadmainscreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeIkea()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset("assets/IKEA Screen.png", height: 156,)
            ,
            /*Text("Creating a better everyday life for the many people.", style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12.8, color: Color(0xff6C6C6C)
            ),)*/
          ],
        ),
      ),
    );
  }
}
