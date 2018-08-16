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
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new AfterSplash(),
      imageNetwork: 'https://imgur.com/33L3Y2Z.jpg',
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
    );
  }
}

class AfterSplash extends StatelessWidget {
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
