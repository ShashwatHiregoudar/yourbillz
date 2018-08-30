import 'dart:io';
import 'package:flutter/material.dart';
import 'package:yourbillz/global/globals.dart' as global;
import 'package:yourbillz/sign/datadisplayscree.dart';
import 'dart:io' show Platform;
import 'package:dio/dio.dart';


// enum gender {male,female}

Dio dio = new Dio(Options(
  connectTimeout: 2000,
  receiveTimeout: 1000,
));

Map<String, String> body = {
  'firstName': '',
  'lastName': '',
  'userEmail': '',
  'gender': '',
  'userPhone': '',
  'userPass': '',
  'device_id': '1234155665',
  'device_type': Platform.operatingSystem,
};

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: "First Name",
                ),
                onChanged: (text) {
                  body['firstName'] = text;
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: "Last Name",
                ),
                onChanged: (text) {
                  body['lastName'] = text;
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  hintText: "Email",
                ),
                onChanged: (text) {
                  body['userEmail'] = text;
                },
              ),
            ),
            /*Row(
              children: <Widget>[
                RadioListTile(
                  groupValue: null,
                  onChanged: (Null value) {},
                  value: null,
                ),
              ],
            ),*/
            ListTile(
              leading: Icon(Icons.phone),
              title: TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Phone",
                ),
                onChanged: (text) {
                  body['userPhone'] = text;
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  hintText: "Password",
                ),
                onChanged: (text) {
                  body['userPass'] = text;
                },
              ),
            ),
            ListTile(
                title: RaisedButton(
              child: Text('Submit'),
              onPressed: () async {
                print(body['firstName']);
                print(body['lastName']);
                print(body['userEmail']);
                print(body['gender']);
                print(body['userPhone']);
                print(body['userPass']);
                print(body['device_id']);
                print(body['device_type']);
                global.response = await dio.post(
                    "http://yourbillz.com/test2/register.php",
                    data: body,
                    options: Options(
                        responseType: ResponseType.JSON,
                        contentType: ContentType
                            .parse("application/x-www-form-urlencoded")));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataDisplayScreen()),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

/*

RadioListTile(
                title: Card(
              child: Row(
                children: <Widget>[
                  new Text('Male'),
                  new Radio(
                    activeColor: Colors.deepPurple,
                    key: null,
                    groupValue: null,
                    value: .5,
                    onChanged: (double value) {
                      body['gender'] = 'male';
                    },
                  ),
                  new Text('Female'),
                  new Radio(
                    activeColor: Colors.deepPurple,
                    key: null,
                    groupValue: null,
                    value: .5,
                    onChanged: (double value) {
                      body['gender'] = 'female';
                    },
                  ),
                  new Text('Other'),
                  new Radio(
                    activeColor: Colors.deepPurple,
                    key: null,
                    groupValue: null,
                    value: .5,
                    onChanged: (double value) {
                      body['gender'] = 'other';
                    },
                  ),
                ],
              ),
            ))


*/
