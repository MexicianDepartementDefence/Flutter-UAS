// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:splash_screen/shared.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_title,
        title: Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "Menu Akun",
            style: title,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              Icons.settings_outlined,
              color: Color(0xff1B1B1B),
              size: 26,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/QR Code.png",
                  height: 84,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rizqi Fatur",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1B1B1B)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "160002359102020",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C6C6C)),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
garis(context, Icons.account_circle_outlined, "Profil Saya"),
garis(context, Icons.add_box_outlined, "Pesanan"),
garis(context, Icons.star_outline, "Ulasan"),
garis(context, Icons.card_giftcard_outlined, "Reward Saya"),
garis(context, Icons.help_outline_rounded, "Bantuan")
            
          ],
        ),
      ),
    );
  }
}

Widget garis(BuildContext context, IconData icon, String text) {
  return Container(
              width: MediaQuery.of(context).size.width,
              height: 74,
              
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Color(0xffE7E7E7)))
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(icon, size: 26, ),
                    SizedBox(width: 16,),
                    Text(text, style: TextStyle(color: Color(0xff1B1B1B), fontWeight: FontWeight.w500, fontSize: 16),)
                  ],
                ),
              ),
            );
}


 
