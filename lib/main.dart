import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './sign/in.dart';

void main() {
  runApp(new MaterialApp(
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
        seconds: 5,
        navigateAfterSeconds: new AfterSplash(),
        //imageNetwork: 'https://i.imgur.com/TyCSG9A.png',
        imageNetwork: 'https://imgur.com/33L3Y2Z.jpg',
        //backgroundColor: Colors.white,
        //styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        //loaderColor: Colors.red
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => LoginScreen()
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
