import 'package:flutter/material.dart';

import 'package:yourbillz/sign/in/in.dart';
//import 'package:yourbillz/sign/up/up_clg.dart';
import 'package:yourbillz/global/globals.dart' as global;
//import 'package:yourbillz/home_page.dart';

void main() {
  runApp(new MaterialApp(
    title: 'yourbillz',
    theme: global.theme,
    home: DefaultTabController(
      length:2,
      child: LoginScreen(),
    )
    
  ));
}

/*
class Mainpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Register();
    return HomePage();
  }
}*/