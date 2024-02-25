import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ratier/Pages/variables.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = Variables.nameValue;
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
                            content: Text("Değişiklikler kaydedildi"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/home");
                                  },
                                  child: Text("TAMAM"))
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
                "Ayarlar",
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
            height: 30.0,
          ),
          Center(
              child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image(
                image: Variables.defaultProfilePic.image,
                color: null,
                width: 100.0,
                height: 100.0,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            onTap: () => _pickImageFromGallery(),
          )),
          SizedBox(
            height: 30.0,
          ),
          Center(
              child: SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'İsim:',
                  labelStyle: TextStyle(
                      color: Colors.white, fontFamily: "Karla", fontSize: 18.0),
                  fillColor: Colors.white),
              style: TextStyle(
                  color: Colors.grey[500], fontSize: 18.0, fontFamily: "Karla"),
              onChanged: (value) => Variables.nameValue = value,
              controller: this.controller,
              inputFormatters: [LengthLimitingTextInputFormatter(15)],
            ),
            width: 170.0,
          )),
          SizedBox(
            height: 20.0,
          ),
        ]),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      Variables.defaultProfilePic =
          Image(image: FileImage(File(returnedImage!.path)));
    });
  }
}
