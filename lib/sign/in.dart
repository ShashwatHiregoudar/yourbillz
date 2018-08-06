import 'dart:io';
import 'package:yourbillz/globals.dart' as global;
import 'package:yourbillz/sign/datadisplayscree.dart';

import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:dio/dio.dart';

Dio dio = new Dio(Options(
  //baseUrl: "http://yourbillz.com/test2/login.php",
  connectTimeout: 2000,
  receiveTimeout: 1000,
  //contentType: ContentType.JSON,
));

Map<String, String> body = {
  'userEmail': '',
  'userPass': '',
  'device_type': Platform.operatingSystem,
  'device_id': '1234155665'
};

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usercontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/loginbackground.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    autofocus: true,
                    onChanged: (text){
                      body['userEmail'] = text;
                    },
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
                    onChanged: (text){
                      body['userPass'] = text;
                    },
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
                  onPressed: () async {
                    //body['userEmail'] = usercontroller.text;
                    //body['userPass'] = passwordcontroller.text;
                    print(body['userEmail']);
                    print(body['userPass']);
                    print(body['device_type']);
                    print(body['device_id']);
                    global.response = await dio.post(
                        "http://yourbillz.com/test2/login.php",
                        data: body,
                        options: Options(
                            responseType: ResponseType.JSON,
                            contentType: ContentType
                                .parse("application/x-www-form-urlencoded")));
                    print('haah');
                    print(global.response.data);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DataDisplayScreen()),
                    );
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
