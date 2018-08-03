//import 'dart:async';

//import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ui_splash_screen/homeScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'YourBillz',
      theme: new ThemeData(
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
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        elevation: 3.0,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
//ksgks