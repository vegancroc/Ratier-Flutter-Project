import 'package:flutter/material.dart';
import 'package:ratier/Pages/variables.dart';
import 'ratesPage.dart';

class PageDrawer extends StatelessWidget {
  const PageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: NavigationDrawer(children: [
      SizedBox(
        height: 30.0,
      ),
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Image(
            image: Variables.defaultProfilePic.image,
            color: null,
            width: 70.0,
            height: 70.0,
            fit: BoxFit.fill,
            alignment: Alignment.center,
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Center(
        child: Text(
          Variables.nameValue,
          style: TextStyle(
              fontFamily: "Karla",
              color: Colors.black,
              fontSize: 24,
              fontStyle: FontStyle.italic),
        ),
      ),
      ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.black,
          ),
          title: Text(
            "Oyların",
            style: TextStyle(fontFamily: "Karla", color: Colors.black),
          ),
          onTap: () => Navigator.pushNamed(context, "/rates")),
      Divider(
        indent: 20.0,
        endIndent: 20.0,
        color: Colors.black,
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text(
          "Ayarlar",
          style: TextStyle(fontFamily: "Karla", color: Colors.black),
        ),
        onTap: () => Navigator.pushNamed(context, "/settings"),
      ),
      Divider(
        indent: 20.0,
        endIndent: 20.0,
        color: Colors.black,
      ),
      SizedBox(
        height: 10.0,
      ),
      Center(
        child: Text(
          "Ratier",
          style: TextStyle(
              color: Colors.black, fontFamily: "Karla", fontSize: 14.0),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Center(
        child: Text(
          "Versiyon 1.0",
          style: TextStyle(
              color: Colors.black, fontFamily: "Karla", fontSize: 14.0),
        ),
      )
    ]));
  }
}
