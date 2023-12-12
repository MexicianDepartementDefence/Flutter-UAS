// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:splash_screen/butuhInspirasi.dart';

class Inspirasi extends StatefulWidget {
  @override
  State<Inspirasi> createState() => _InspirasiState();
}

class _InspirasiState extends State<Inspirasi> with TickerProviderStateMixin {
  late final tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Temukan Inspirasi",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xff1B1B1B)),
        ),
        bottom: TabBar(
          padding: EdgeInsets.only(left: 24, right: 100),
          controller: tabController,
          indicatorColor: Color(0xff0058AB),
          tabs: <Widget>[
            Tab(
              text: "Inspirasi",
            ),
            Tab(
              text: "Koleksi",
            ),
            Tab(
              text: "Edukasi",
            )
          ],
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          unselectedLabelColor: Color(0xff6C6C6C),
          labelColor: Color(0xff1B1B1B),
          labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 24,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 26,
                )
              ],
            ),
          )
        ],
      ),
      body: TabBarView(controller: tabController, children: <Widget>[
        ButuhInspirasi(),
        Center(
          child: Text("Ini Hadi"),
        ),
        Center(
          child: Text("Ini Munji"),
        )
      ]),
    );
  }
}
