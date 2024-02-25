import 'package:flutter/material.dart';
import "package:ratier/Pages/variables.dart";
import 'package:ratier/Pages/viewRate.dart';

class RatesDesign extends StatefulWidget {
  const RatesDesign({super.key});

  @override
  State<RatesDesign> createState() => _RatesDesignState();
}

class _RatesDesignState extends State<RatesDesign> {
  @override
  void initState() {
    super.initState();
    SetCards();
    setState(() {});
  }

  void SetCards() {
    Variables.rates.forEach((x) {
      cards.add(Card(
          color: Colors.grey[500],
          elevation: 10.0,
          shadowColor: Colors.white,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: x.image.image,
                  color: null,
                  width: 70.0,
                  height: 70.0,
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              title: Text(
                x.isim,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Karla",
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                x.aciklama,
                style: TextStyle(
                    color: Colors.black, fontFamily: "Karla", fontSize: 12.0),
              ),
              onTap: () {
                Variables.pickedRate = x;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewRate()));
              },
            ),
            Row(
              children: x.stars.toList(),
            ),
          ]),
          //margin: EdgeInsets.fromLTRB(10, 50, 1050, 0)));
          margin: EdgeInsets.all(10.0)));
    });
  }

  var cards = <Card>{};

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: cards.toList(),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
