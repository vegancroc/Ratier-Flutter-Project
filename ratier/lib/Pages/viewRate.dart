import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:ratier/Pages/variables.dart';
import "package:ratier/Pages/stars.dart";
import "package:ratier/Pages/Rate.dart";

class ViewRate extends StatefulWidget {
  const ViewRate({super.key});

  @override
  State<ViewRate> createState() => _ViewRateState();
}

class _ViewRateState extends State<ViewRate> {
  @override
  void initState() {
    super.initState();
    SetStar();
  }

  var ikonlar = <Icon>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Oy Görüntüle",
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
      body: Column(children: [
        SizedBox(
          height: 10.0,
        ),
        Center(
            child: GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: Variables.pickedRate.image.image,
              color: null,
              width: 150.0,
              height: 190.0,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),
          //onTap: () => _pickImageFromGallery(),
        )),
        SizedBox(
          height: 10.0,
        ),
        Center(
            child: SizedBox(
          child: TextFormField(
            readOnly: true,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Oy İsmi:',
                labelStyle: TextStyle(
                    color: Colors.white, fontFamily: "Karla", fontSize: 18.0),
                fillColor: Colors.white),
            style: TextStyle(
                color: Colors.grey[500], fontSize: 18.0, fontFamily: "Karla"),
            //onChanged: (value) => Variables.nameValue = value,

            inputFormatters: [LengthLimitingTextInputFormatter(15)],
            initialValue: Variables.pickedRate.isim,
          ),
          width: 170.0,
        )),
        SizedBox(
          height: 10.0,
        ),
        Center(
            child: SizedBox(
          child: TextFormField(
            readOnly: true,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Açıklama',
                labelStyle: TextStyle(
                    color: Colors.white, fontFamily: "Karla", fontSize: 18.0),
                fillColor: Colors.white),
            style: TextStyle(
                color: Colors.grey[500], fontSize: 18.0, fontFamily: "Karla"),
            //onChanged: (value) => Variables.nameValue = value,

            inputFormatters: [LengthLimitingTextInputFormatter(100)],
            initialValue: Variables.pickedRate.aciklama,
            minLines: 3,
            maxLines: 25,
          ),
          width: 230.0,
        )),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ikonlar.toList(),
        )
      ]),
    );
  }

  void SetStar() {
    for (var i = 0; i < Variables.pickedRate.rateCount; i++) {
      ikonlar.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: 40.0,
      ));
    }
    setState(() {});
  }
}
