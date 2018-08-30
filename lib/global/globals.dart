library yourbillz;
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yourbillz/global/user.dart';
var context;
Response<String> response;
var login = false;
var jsonresponse;
var theme = ThemeData(
      fontFamily: 'Oswald',
      primaryColorDark: Color(0x007000),
      accentColor: Color(0x76D248),
      dividerColor: Color(0xE1E1E1),
      splashColor: Color(0x41A00E),
      textSelectionColor: Color(0x222222),
      primarySwatch: Colors.green,
    );

dynamic user = json.decode(response.toString());
dynamic userlogin_response = user['login_response']['login_detail'][0];
User mainuser = new User(
  uid : userlogin_response['uid'],
  firstName : userlogin_response['firstName'],
  lastName : userlogin_response['lastName'],
  userEmail : userlogin_response['userEmail'],
  userPhone : userlogin_response['userPhone'],
  userPass : userlogin_response['userPass'],
  ref_id : userlogin_response['ref_id'],
  otp : userlogin_response['otp'],
  gender : userlogin_response['gender'],
  device_id : userlogin_response['device_id'],
  device_type : userlogin_response['device_type'],
);





///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var mydrawer = Drawer(
    child: ListView(
      //padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration( 
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage('assets/profile.png')
            )
          ),
          child: Column(
            children: <Widget>[
              Text('01fe15bcs178 // '),
              Text('01fe15bcs178 // needs to be dynamic'),
            ],
          ),
        ),
        ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){},),
        ListTile(title: Text('Bills'),leading: Icon(Icons.monetization_on),onTap: (){},),
        ListTile(title: Text('Offers'),leading: Icon(Icons.local_offer),onTap: (){},),
        ListTile(title: Text('Feedback'),leading: Icon(Icons.feedback),onTap: (){},),
        ListTile(title: Text('Events'),leading: Icon(Icons.insert_invitation),onTap: (){},),
        ListTile(title: Text('Refferafriend'),leading: Icon(Icons.share),onTap: (){},),
        ListTile(title: Text('AboutUs'),leading: Icon(Icons.info_outline),onTap: (){},),
      ]
    ),
  );