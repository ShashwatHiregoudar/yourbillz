import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:yourbillz/sign/in/in.dart';
import 'package:yourbillz/sign/up/up_clg.dart';
//import 'package:fire';

void main() {
  runApp(new MaterialApp(
    title: 'yourbillz',
    theme: ThemeData(
      fontFamily: 'Oswald',
      primaryColorDark: Color(0x007000),
      accentColor: Color(0x76D248),
      dividerColor: Color(0xE1E1E1),
      splashColor: Color(0x41A00E),
      //scaffoldBackgroundColor: Color(0x41A00E),
      textSelectionColor: Color(0x222222),
      primarySwatch: Colors.green,
      //primaryColor: Color(0x41A00E),
    ),
    home: new HomePage(),
  ));
}
/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Welcome In SplashScreen Package")),
      body: new Center(
        child: Column(
          children: <Widget>[
            new Text(
              "Succeeded!",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Register()));
              },
            )
          ],
        ),
      ),
    );
  }
}
*/
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Register();
  }
}