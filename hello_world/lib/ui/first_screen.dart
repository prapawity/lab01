import 'dart:io';

import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_date_picker/flutter_date_picker.dart';
import 'package:flutter_date_picker/flutter_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyFirstScreen();
  }

}class MyFirstScreen extends State<FirstScreen>{
  List <String> _passenger = <String>["0","1","2","3","4","5"];
  String passenger = "0";
  File image;

  Future getImg() async {
    var img  = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      image = img;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
            onPressed: (){
              getImg();
            },
          ),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        children: <Widget>[
          // InputDecorator(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.access_alarm),
          //     labelText: "Passenger"
          //   ),
          //   isEmpty: passenger == "",
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton <String>(
          //       isDense: false,
        
          //       value: passenger,
          //       onChanged: (value){
          //         setState(() {
          //            passenger = value;
          //         });
          //       },
          //       items: _passenger.map((String value){
          //         return DropdownMenuItem(
          //           child: Text(value),
          //           value: value,
          //         );
          //       }).toList(),
          //     ),
          //   ),
          // ),
          // DateTimePickerFormField(
          //   inputType: InputType.both,
          //   initialDate: DateTime.now(),
          //   format: DateFormat("yyyy-MM-dd-hh-mm-ss"),
          //   decoration: InputDecoration(
          //     labelText: "date",
          //   ),onChanged: (dt){
          //     setState(() {
          //       // date = dt;
          //     });
          //   },
          // ),
          // DateTimePickerFormField(
          //   inputType: InputType.time,
          //   initialDate: DateTime.now(),
          //   format: DateFormat("yyyy-MM-dd-hh-mm-ss"),
          //   decoration: InputDecoration(
          //     labelText: "date",
          //   ),onChanged: (dt){
          //     setState(() {
          //       // date = dt;
          //     });
          //   },
          // ),
          // RaisedButton(
          //   onPressed: (){
          //     InputType.date;
          //   }
          // ),
          Container(
            child: image == null
            ? new Text("No image Selected")
            : new Image.file(image),
          ),
          
        ],
      )
    );
  }

}