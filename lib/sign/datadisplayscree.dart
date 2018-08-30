import 'package:yourbillz/global/globals.dart' as global;
import 'package:flutter/material.dart';

class DataDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data_Display Screen'),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Card(
            child: Text(global.response.data),
          ),
        ]),
      ),
    );
  }
}
