import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/loginbackground.png'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: RaisedButton(
            child: Text('Welcome to Login screen'),
            onPressed: () {
              // Navigate to second screen when tapped!
            },
          ),
        ),
      ),
    );
  }
}
