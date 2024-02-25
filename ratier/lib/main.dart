import 'package:flutter/material.dart';
import 'package:ratier/Pages/addRate.dart';
import "package:ratier/Pages/mainPage.dart";
import 'Pages/ratesPage.dart';
import 'Pages/settings.dart';
import 'Pages/viewRate.dart';
import "Pages/splashScreen.dart";

void main() {
  runApp(MaterialApp(
    initialRoute: "/splash",
    routes: {
      "/splash": (context) => Splash(),
      "/home": (context) => Anasayfa(),
      "/rates": (context) => RatesPage(),
      "/settings": (context) => Settings(),
      "/addRate": (context) => AddRate(),
      "/viewRate": (context) => ViewRate(),
    },
  ));
}
