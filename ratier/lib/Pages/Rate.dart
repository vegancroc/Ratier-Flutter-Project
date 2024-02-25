import 'package:flutter/material.dart';

class Rate {
  String isim = "";
  String aciklama = "";
  Image image = Image(image: AssetImage("assets/emptyProfile.png"));

  int rateCount = 1;
  var stars = <Icon>{};

  Rate(String isim, String aciklama, Image image, int rateCount) {
    this.isim = isim;
    this.aciklama = aciklama;
    this.image = image;
    this.rateCount = rateCount;
    for (var i = 0; i < rateCount; i++) {
      stars.add(Icon(
        Icons.star,
        color: Colors.yellow,
      ));
    }
  }
}
