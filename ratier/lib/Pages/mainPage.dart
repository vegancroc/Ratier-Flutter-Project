import 'package:flutter/material.dart';
import 'package:ratier/Pages/ratesDesign.dart';
import 'package:ratier/Pages/variables.dart';
import 'dart:async';
import "mainPageDrawer.dart";

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  double colorValue = 0.0;
  bool pass = false;
  RatesDesign rates = RatesDesign();
  Center bodyValue = Center();
  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (colorValue >= 30.0) pass = true;

      if (pass) colorValue -= 1.0;

      if (colorValue <= 0) pass = false;

      if (pass == false) colorValue += 1.0;

      setState(() {});
    });

    if (Variables.rates.isEmpty) {
      bodyValue = Center(
        child: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          Image(
            image: AssetImage("assets/blankFace.png"),
            width: 120.0,
            height: 120.0,
          ),
          Text(
            "Henüz oy yok..",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Karla",
                fontSize: 28.0,
                fontStyle: FontStyle.italic),
          ),
        ]),
      );
    } else {
      bodyValue = Center(
        child: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "'" +
                Variables.nameValue +
                "'" +
                " oy sayısı: " +
                Variables.rates.length.toString(),
            style: TextStyle(
                color: Colors.white, fontFamily: "Karla", fontSize: 28.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Daha çok oy ekleyebilirsin...",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Karla",
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
        ]),
      );

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: colorValue,
        shadowColor: Colors.grey[400],
        toolbarHeight: 90.0,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white, size: 40.0),
        title: Row(children: [
          Icon(
            Icons.star,
            size: 50.0,
            color: Colors.yellow,
          ),
          Text(
            "Ratier",
            style: TextStyle(
                color: Colors.white, fontFamily: "Karla", fontSize: 32.0),
          )
        ]),
      ),
      backgroundColor: Colors.grey[850],
      endDrawer: PageDrawer(),
      body: bodyValue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pop(context);
          Navigator.pushNamed(context, "/addRate");
        },
        shape: CircleBorder(),
        backgroundColor: Colors.black,
        splashColor: Colors.grey[700],
        child: Text(
          "+",
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}
