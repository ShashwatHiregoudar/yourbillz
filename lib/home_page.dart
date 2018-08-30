import 'package:flutter/material.dart';

import 'package:yourbillz/global/globals.dart' as global;
class HomePage extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    global.context = context;
    return Scaffold(
      drawer: global.mydrawer,
      appBar: AppBar(bottom:TabBar(
          tabs: <Widget>[
            Text('Invoice'),
            Text('Manual Spends'),
          ],
        ),
        title: Text('Yourbillz'),
      ),
      body:TabBarView(children: <Widget>[
        Icon(Icons.account_circle),
        Icon(Icons.account_box)
      ],),
    );
  }
}

      