import 'package:flutter/material.dart';
import './detail_screen.dart';
class FirstScreen extends StatelessWidget{
  int num = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        ),
        body: Center(child: RaisedButton(child: Text("Go Go Power Ranger"),onPressed: (){
          num += 1;
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(title: "$num",)));}
          
          ,),
        ),
      );
  }

}