import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget{
  final String title;
  DetailScreen({this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        ),
        body: Center(child: RaisedButton(child: Text("Go Go Power Ranger"),onPressed: (){
          Navigator.pop(context);}
          
          ,),
        ),
      );
  }

}