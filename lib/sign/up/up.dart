import 'package:flutter/material.dart';
import 'package:yourbillz/sign/up/up_clg.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/registration_selector.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            children: <Widget>[
              Card(
                color: Colors.lightGreen,
                child: RaisedButton(
                  elevation: 6.0,
                  child: Text('General User'),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Register()));
                  },
                ),
              ),
              Card(
                color: Colors.lightGreen,
                child: RaisedButton(
                  elevation: 6.0,
                  child: Text('College User'),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Register()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
