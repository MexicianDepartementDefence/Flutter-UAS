// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:splash_screen/shared.dart';

class Keranjang extends StatefulWidget {
  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  bool cinta = true;

  List<int> harga_alex = [0, 1350000, 2700000, 4050000, 5400000, 6750000];

  List<int> harga_mackapar = [0, 1499000, 2998000, 4497000, 5996000, 7495000];

  int index_alex = 1;
  int index_mackapar = 1;

  void cinta2() {
    setState(() {
      cinta = !cinta;
    });
  }

  void back() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_title,
        leading: GestureDetector(
          onTap: back,
          child: Icon(
            Icons.arrow_back,
            size: 26,
            color: Color(0xff1B1B1B),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(
            "Keranjang",
            style: title,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: GestureDetector(
                onTap: cinta2,
                child: Icon(
                  cinta ? Icons.favorite_border_outlined : Icons.favorite,
                  color: cinta ? Color(0xff1B1B1B) : Color(0xffD71313),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 26, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              barang2(),
              SizedBox(
                height: 24,
              ),
              alex(),
              SizedBox(
                height: 24,
              ),
              mackapar()
            ],
          ),
        ),
      ),
      bottomNavigationBar: 
Container(
  padding: EdgeInsets.fromLTRB(24, 28, 24, 28),
  width: MediaQuery.of(context).size.width,
  height: 104,
  decoration: BoxDecoration(border: Border.all(color: Color(0xffE7E7E7))),
  child:   Row(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Total", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff6C6C6C)),),
      SizedBox(height: 6,),
      Text("Rp ${harga_alex[index_alex] + harga_mackapar[index_mackapar]}", style: TextStyle(color: Color(0xff1B1B1B), fontSize: 20, fontWeight: FontWeight.w700),)
    ],
  ),
  
  Container(
  
  width: 181,
  
  height: 56,
  
  color: Color(0xff0058AB),
  

  child: Center(child: Text("Beli", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w600),),),
  )
  
      
  
    ],
  
  ),
)
      );

    
  }

 

  Container mackapar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 146,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/Mackapar.png",
            height: 99,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "MACKAPÄR",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1B1B1B),
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Kabinet/tempat sepatu, putih, \n 80x35x102 cm",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff6C6C6C)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Rp ${harga_mackapar[index_mackapar]}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1B1B1B),
                    fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 26),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE7E7E7))),
                    child: Image.asset(
                      "assets/Trash.png",
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE7E7E7))),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index_mackapar > 0) {
                              setState(() {
                                index_mackapar = index_mackapar - 1;
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/Min.png",
                            height: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Text(
                            index_mackapar.toString(),
                            style: TextStyle(
                                color: Color(0xff1B1B1B), fontSize: 14),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (index_mackapar < harga_mackapar.length - 1) {
                              setState(() {
                                index_mackapar = index_mackapar + 1;
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/plus.png",
                            height: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container alex() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 146,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/Alamari.png",
            height: 99,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ALEX",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1B1B1B),
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Unit laci, abu-abu toska, 36x70 cm",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff6C6C6C)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Rp ${harga_alex[index_alex]}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1B1B1B),
                    fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 26),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE7E7E7))),
                    child: Image.asset(
                      "assets/Trash.png",
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE7E7E7))),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index_alex > 0) {
                              setState(() {
                                index_alex = index_alex - 1;
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/Min.png",
                            height: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Text(
                            index_alex.toString(),
                            style: TextStyle(
                                color: Color(0xff1B1B1B), fontSize: 14),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (index_alex < harga_alex.length - 1) {
                              setState(() {
                                index_alex = index_alex + 1;
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/plus.png",
                            height: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget barang2() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
        text: TextSpan(
            text: "2",
            style: TextStyle(
                color: Color(0xff1B1B1B), fontWeight: FontWeight.w600),
            children: <TextSpan>[
              TextSpan(
                  text: " Barang",
                  style: TextStyle(
                      color: Color(0xff6C6C6C), fontWeight: FontWeight.w400))
            ]),
      ),
      Text(
        "Hapus Semua",
        style: TextStyle(color: Color(0xff0058AB), fontWeight: FontWeight.w600),
      )
    ],
  );
}
