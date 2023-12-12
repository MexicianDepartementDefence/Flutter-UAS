// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:splash_screen/ModelBarang.dart';
import 'package:splash_screen/keranjang.dart';

class Wishlist extends StatefulWidget {
  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  static List<Barang> iseng = [
    Barang("assets/Alamari.png", "ALEX", "Unit laci, abu-abu toska, 36x70 cm",
        "Rp1.350.000"),
    Barang("assets/Kursiyun.png", "MILLBERGET", "Kursi putar, murum hitam",
        "Rp1.799.000"),
    Barang(
        "assets/Kasur.png",
        "SONGESAND",
        "Rngk tmpt tdr dg 2 ktk penyimpanan, cokelat, 160x200 cm",
        "Rp3.499.000"),
    Barang("assets/Lampu.png", "HEKTAR", "Lampu lantai, abu-abu tua",
        "Rp1.299.000")
  ];

  List<Barang> iseng2 = List.of(iseng);

  void pencarian(String value) {
    setState(() {
      iseng2 = iseng
          .where((element) =>
              element.nama.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void pindah() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Keranjang()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "Wishlist",
            style: TextStyle(
                color: Color(0xff1B1B1B),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: GestureDetector(
              onTap: pindah,
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 26,
                color: Color(0xff1B1B1B),
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => pencarian(value),
              decoration: InputDecoration(
                hintText: "Cari Barang Di Wishlist",
                prefixIcon: Icon(
                  Icons.search,
                  size: 26,
                  color: Color(0xff1B1B1B),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE7E7E7))),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: iseng.length.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1B1B1B)),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Barang',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))
                      ]),
                ),
                Icon(
                  Icons.list,
                  size: 26,
                  color: Color(0xff1B1B1B),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: iseng2.length,
                    itemBuilder: (context, index) => ListTile(
                          contentPadding: EdgeInsets.all(24),
                          trailing: Icon(
                            Icons.more_vert,
                            size: 26,
                            color: Color(0xff1B1B1B),
                          ),
                          leading: Image.asset(
                            iseng[index].gambar,
                            height: 99,
                          ),
                          title: Text(
                            iseng[index].nama,
                            style: TextStyle(
                                color: Color(0xff1B1B1B),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                iseng[index].desc,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                iseng[index].harga,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1B1B1B)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: pindah,
                                child: Container(
                                  width: 281,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff0058AB))),
                                  child: Center(
                                    child: Text(
                                      "Tambah ke Keranjang",
                                      style:
                                          TextStyle(color: Color(0xff0058AB)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
