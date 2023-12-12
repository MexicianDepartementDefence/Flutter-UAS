// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Konten1 extends StatelessWidget {
  final String gambar;
  final String text;
  final String desc;

  const Konten1(
      {super.key,
      required this.gambar,
      required this.text,
      required this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 232,
      color: Color(0xff4F707F),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            height: 119,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                text,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                desc,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class Konten2 extends StatelessWidget {
  final String gambar;
  final String text;
  final String desc;

  const Konten2(
      {super.key,
      required this.gambar,
      required this.text,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 232,
      color: Color(0xff5E4238),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            height: 119,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                text,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                desc,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class iseng extends StatelessWidget {
  final String gambar;
  final String text;

  const iseng({super.key, required this.gambar, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            height: 120,
          ),
          SizedBox(
            height: 8,
          ),
          Text(text,
              style: TextStyle(
                  color: Color(0xff1B1B1B),
                  fontSize: 16,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}

class iseng2 extends StatelessWidget {
  final String gambar;
  final String text;

  const iseng2({super.key, required this.gambar, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 382,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            height: 120,
          ),
          SizedBox(
            height: 16,
          ),
          Text(text,
              style: TextStyle(
                  color: Color(0xff1B1B1B),
                  fontSize: 16,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
