import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ratier/Pages/mainPage.dart';
import 'package:ratier/Pages/variables.dart';
import "package:ratier/Pages/stars.dart";
import "package:ratier/Pages/Rate.dart";
import "package:ratier/Pages/mainPage.dart";

class AddRate extends StatefulWidget {
  const AddRate({super.key});

  @override
  State<AddRate> createState() => _AddRateState();
}

class _AddRateState extends State<AddRate> {
  TextEditingController Isimcontroller = TextEditingController();
  TextEditingController Aciklamacontroller = TextEditingController();
  Image resim = Image(
    image: AssetImage("assets/emptyImage.png"),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Uyarı"),
                            content:
                                Text("Ana sayfaya dönmek istiyor musunuz?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/home");
                                    //Navigator.pop(context);
                                    //Navigator.pop(
                                    //context); //Alertten çık, sonra sayfadan çık
                                  },
                                  child: Text("EVET")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("HAYIR")),
                            ],
                          );
                        });
                    //Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40.0,
                  )),
              Text(
                "Oy Ekle",
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
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                image: resim.image,
                color: null,
                width: 150.0,
                height: 190.0,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            onTap: () => _pickImageFromGallery(),
          )),
          SizedBox(
            height: 10.0,
          ),
          Center(
              child: SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Oy İsmi:',
                  labelStyle: TextStyle(
                      color: Colors.white, fontFamily: "Karla", fontSize: 18.0),
                  fillColor: Colors.white),
              style: TextStyle(
                  color: Colors.grey[500], fontSize: 18.0, fontFamily: "Karla"),
              //onChanged: (value) => Variables.nameValue = value,
              controller: this.Isimcontroller,
              inputFormatters: [LengthLimitingTextInputFormatter(15)],
            ),
            width: 170.0,
          )),
          SizedBox(
            height: 10.0,
          ),
          Center(
              child: SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Açıklama',
                  labelStyle: TextStyle(
                      color: Colors.white, fontFamily: "Karla", fontSize: 18.0),
                  fillColor: Colors.white),
              style: TextStyle(
                  color: Colors.grey[500], fontSize: 18.0, fontFamily: "Karla"),
              //onChanged: (value) => Variables.nameValue = value,
              controller: this.Aciklamacontroller,
              inputFormatters: [LengthLimitingTextInputFormatter(100)],
              minLines: 3,
              maxLines: 25,
            ),
            width: 230.0,
          )),
          SizedBox(
            height: 20.0,
          ),
          Center(child: Stars()),
          IconButton(
            onPressed: () {
              Variables.rates.add(Rate(Isimcontroller.text,
                  Aciklamacontroller.text, resim, Variables.starRate));

              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Bilgilendirme"),
                      content: Text("Oy başarıyla eklendi."),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            child: Text("TAMAM"))
                      ],
                    );
                  });
            },
            icon: Icon(
              Icons.check,
              size: 50.0,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      resim = Image(image: FileImage(File(returnedImage!.path)));
    });
  }
}
