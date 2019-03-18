import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Screen'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Open'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Insert'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Get'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Delete'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
