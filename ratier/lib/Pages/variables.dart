import 'package:flutter/material.dart';
import "dart:io";
import 'package:image_picker/image_picker.dart';
import "package:ratier/Pages/Rate.dart";
import "package:ratier/Pages/ratesDesign.dart";

class Variables {
  static String nameValue = "İsim";
  static Image defaultProfilePic =
      Image(image: AssetImage("assets/emptyProfile.png"));
  static int starRate = 1;

  static var rates = <Rate>{};

  static Rate pickedRate = Rate(
      "",
      "",
      Image(
        image: AssetImage("assets/emptyProfile.png"),
      ),
      1);
}
