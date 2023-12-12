// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:splash_screen/container1.dart';
import 'package:splash_screen/deskripsibarang.dart';
import 'package:splash_screen/keranjang.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void iseng() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DeskBarang()));
    });
  }

  void pindahKeranjang() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Keranjang()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/IKEA3.png",
          height: 33,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Row(
              children: [
                GestureDetector(
                  onTap: iseng,
                  child: Icon(
                    Icons.notifications_none,
                    size: 26,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                GestureDetector(
                  onTap: pindahKeranjang,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 26,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                  ),
                  hintText: "Cari barang impianmu",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6C6C6C)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE7E7E7)))),
            ),
            SizedBox(
              height: 24,
            ),
            Image.asset(
              "assets/Raholt.png",
              height: 280,
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pencetanRandom("assets/Kamar Tidur.png", "Kamar Tidur"),
                    SizedBox(
                      width: 8,
                    ),
                    pencetanRandom("assets/Tempat Kerja.png", "Tempat Kerja"),
                    SizedBox(
                      width: 8,
                    ),
                    pencetanRandom("assets/Dapur.png", "Dapur")
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pencetanRandom("assets/Bayi Dan Anak.png", "Bayi & Anak"),
                    SizedBox(
                      width: 8,
                    ),
                    pencetanRandom("assets/Tekstil.png", "Tekstil"),
                    SizedBox(
                      width: 8,
                    ),
                    pencetanRandom("assets/Penyimpanan.png", "Penyimpanan")
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                produkPopuler(),
                SizedBox(height: 48),
                koleksi(),
                SizedBox(height: 48),
                penawaran()
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Widget pencetanRandom(String gambar, String text) {
  return Container(
    width: 108,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          gambar,
          height: 80,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          text,
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0Xff1B1B1B)),
        )
      ],
    ),
  );
}

class produkPopuler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Produk Populer",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xff1B1B1B)),
            ),
            Text(
              "Lihat Semua",
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xff0058AB)),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeskBarang(),
                        ));
                  },
                  child: descProduk("assets/KROKFJORDEN.png", "KROKFJORDEN",
                      "Pengait dengan plastik isap ...", "Rp99.000")),
              SizedBox(
                width: 24,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeskBarang(),
                        ));
                  },
                  child: descProduk("assets/LAGKAPTEN.png", "ALEX/LAGKAPTEN",
                      "Meja, hijau muda/putih, 120x60 cm", "Rp1.909.000")),
              SizedBox(
                width: 24,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeskBarang(),
                        ));
                  },
                  child: descProduk("assets/Fardal Or Pax.png", "FARDAL/PAX",
                      "Kombinasi lemari pakaian, putih/hig...", "Rp8.400.000"))
            ],
          ),
        )
      ],
    );
  }
}

Widget descProduk(String gambar, String nama, String desc, String harga) {
  return Container(
    width: 146,
    height: 254,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        gambar,
        height: 146,
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        nama,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff1B1B1B)),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        desc,
        style: TextStyle(
            color: Color(0xff6C6C6C),
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        harga,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff1B1B1B)),
      ),
    ]),
  );
}

Widget koleksi() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Telusuri Koleksi Kami",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xff1B1B1B)),
          ),
          Text(
            "Lihat Semua",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff0058AB)),
          )
        ],
      ),
      SizedBox(
        height: 16,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Konten1(
                gambar: "assets/Lautan Kudus.png",
                text: "BLÅVINGAD",
                desc:
                    "Koleksi yang terinspirasi dari lautan untuk menciptakan ..."),
            SizedBox(
              width: 16,
            ),
            Konten2(
                gambar: "assets/Natal.png",
                text: "VINTERFINT",
                desc:
                    "Koleksi VINTERFINT hadir dengan warna dan pola indah ...")
          ],
        ),
      )
    ],
  );
}

Widget penawaran() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Telusuri Koleksi Kami",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xff1B1B1B)),
        ),
        Text(
          "Lihat Semua",
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xff0058AB)),
        )
      ],
    ),
    SizedBox(
      height: 16,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset(
            "assets/Seratus.png",
            height: 150,
          ),
          SizedBox(
            width: 16,
          ),
          Image.asset(
            "assets/Sejuta.png",
            height: 150,
          )
        ],
      ),
    )
  ]);
}
