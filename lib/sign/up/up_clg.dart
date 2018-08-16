import 'dart:io';
import 'package:flutter/material.dart';
import 'package:yourbillz/globals.dart' as global;

import 'dart:io' show Platform;
import 'package:dio/dio.dart';

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
  'device_id': '351646514654',
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
              leading: Icon(Icons.person),
              title: TextField(
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
            ListTile(
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
            )),
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
          ],
        ),
      ),
    );
  }
}

/*

TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                hintText: "Ajay",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Last name",
                hintText: "hirekerur",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "email",
                hintText: "abc@gmail.com",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "gender",
                hintText: "Male / Female",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "01FE15BCSxxx / abc@gmail.com",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "01FE15BCSxxx / abc@gmail.com",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "01FE15BCSxxx / abc@gmail.com",
              ),
              onChanged: (text) {
                body['userEmail'] = text;
              },
              autocorrect: true,
              autofocus: true,
            ),

*/
