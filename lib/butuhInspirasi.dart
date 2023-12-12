// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splash_screen/container1.dart';

class ButuhInspirasi extends StatefulWidget {
  @override
  State<ButuhInspirasi> createState() => _ButuhInspirasiState();
}

class _ButuhInspirasiState extends State<ButuhInspirasi> {
  int i5eng = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tombol("Semua", 0),
                  SizedBox(
                    width: 16,
                  ),
                  tombol("Ruang Kerja", 1),
                  SizedBox(
                    width: 16,
                  ),
                  tombol("Dapur", 2),
                  SizedBox(
                    width: 16,
                  ),
                  tombol("Ruang Keluarga", 3)
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iseng(
                    gambar: "assets/Hunian.png",
                    text: "Hunian compact yang nyaman"),
                SizedBox(
                  width: 16,
                ),
                iseng(
                    gambar: "assets/Lakukan.png",
                    text: "Lakukan 5 hal ini agar sepatumu bebas ...")
              ],
            ),
            SizedBox(
              height: 24,
            ),
            iseng2(
                gambar: "assets/Elegan.png",
                text:
                    "Hadirkan nuasa elegant dan fancy kedalam kamar tidur anda"),
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iseng(
                    gambar: "assets/Sehat.png",
                    text: "Rumah lebih sehat dengan set tempat ..."),
                SizedBox(
                  width: 16,
                ),
                iseng(
                    gambar: "assets/Kamar Anak.png",
                    text: "Membuat kamar anak rapi jadi lebih mudah")
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector tombol(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          i5eng = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        color: i5eng == index ? Color(0xff0058AB) : Color(0xffE7E7E7),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: i5eng == index ? Color(0xffFFFFFF) : Color(0xff1B1B1B),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
        ),
      ),
    );
  }
}
