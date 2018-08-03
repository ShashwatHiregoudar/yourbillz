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
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      //enabled: true,
                      labelText: "Username",
                      hintText: "01FE15BCSxxx / abc@gmail.com",
                      //helperText: "Username or password",
                      //errorText: "Enter a valid Email",
                      //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      //border: UnderlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      //helperText: "Password Please",
                      //errorText: "Password Is Incorrect",
                      //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text('Login'),
                  onPressed: () {
                    // Navigate to second screen when tapped!
                  },
                ),
                FlatButton(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
