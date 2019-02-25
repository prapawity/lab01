import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class ListData extends StatelessWidget{

  Future loadPost() async{
    Response resp =  await get("https://jsonplaceholder.typicode.com/posts");
    // Map<String, dynamic> data =json.decode(resp.body);
    print(resp.body);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("data"),
            onPressed: loadPost,
          )
        ],
      ),
    );
  }

}