// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import "package:flutter/material.dart";
import "package:splash_screen/keranjang.dart";
import "package:splash_screen/shared.dart";

class DeskBarang extends StatefulWidget {
  @override
  State<DeskBarang> createState() => _DeskBarangState();
}

class _DeskBarangState extends State<DeskBarang> {
  bool stateCinta = true;
  void cinta() {
    setState(() {
      stateCinta = !stateCinta;
    });
  }

  void pindah() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Keranjang())
      );
    });
  }

  int angka = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_title,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 26,
              color: Colors.black,
            ),
          ),
        ),
        title: Text("ALEX/LAGKAPTEN", style: title),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
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
                  Icons.share_sharp,
                  size: 26,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 24,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 26,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/Kamar Kerja.png",
                height: 382,
              ),
              SizedBox(
                height: 16,
              ),
              galleryGambar(),
              SizedBox(
                height: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ALEX/LAGKAPTEN",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Meja, hijau muda/putih, 120x60 cm",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff6C6C6C)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Rp1.909.000",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star_half_outlined,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.5 | Terjual 116",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff6C6C6C)),
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: cinta,
                    child: Icon(
                      stateCinta
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: stateCinta ? Colors.black : Color(0xffD71313),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.",
                style: TextStyle(fontSize: 16, color: Color(0xff1B1B1B)),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: keranjang(),
    );
  }

  Container keranjang() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      height: 104,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE7E7E7)),
          color: Color(0xffFFFFFF)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 56,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7)),
                color: Color(0xffFFFFFF)),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (angka > 1) {
                          angka = angka - 1;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/Min.png",
                      height: 26,
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Center(
                    child: Text(angka.toString()),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (angka < 5) {
                          angka = angka + 1;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/plus.png",
                      height: 26,
                    ),
                  )
                ],
              ),
            ),
          ),
       
              GestureDetector(
                onTap: pindah,
                child: Container(
                  width: 210,
                  height: 56,
                  color: Color(0xff0058AB),
                  child: Center(
                      child: Text(
                    "Tambah Ke Keranjang",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              )
        ],
      ),
    );
  }
}

Widget galleryGambar() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Image.asset(
          "assets/Meja.png",
          height: 64,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/Meja 1.png",
          height: 64,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/Lemari.png",
          height: 64,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/Stand.png",
          height: 64,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/Kamar Kecil.png",
          height: 64,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    ),
  );
}
