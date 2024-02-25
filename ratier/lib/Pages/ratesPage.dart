import 'package:flutter/material.dart';
import "package:ratier/Pages/ratesDesign.dart";

class RatesPage extends StatelessWidget {
  const RatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40.0,
                  )),
              Text(
                "Oyların",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Karla", fontSize: 32.0),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          toolbarHeight: 90.0,
        ),
        backgroundColor: Colors.grey[850],
        body: RatesDesign(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
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
      ),
    );
  }
}
