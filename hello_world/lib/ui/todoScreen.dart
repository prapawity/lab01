import 'package:flutter/material.dart';
import '../model/todo.dart';

class TodoScreen extends StatelessWidget {
  TodoProvider todo =TodoProvider();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Screen'),
      ),
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Open'),
              onPressed: () {
                todo.open("todo.db");
                print("DB opened");
              },
            ),
            RaisedButton(
              child: Text('Insert'),
              onPressed: () async {
                Todo data = Todo();
                data.done = false;
                data.title = "asas";
                Todo result = await todo.insert(data);
                print(result.toMap());
              },
            ),
            RaisedButton(
              child: Text('Update'),
              onPressed: () async{
                Todo newData =Todo();
                newData.id = 1;
                newData.title = 'Spy';
                newData.done =true;
                int result = await todo.update(newData);
                print(result);
              },
            ),
            RaisedButton(
              child: Text('Get'),
              onPressed: () async{
                Todo data = await todo.getTodo(53);
                print(data.id);
                // print(data.toMap());
              },
            ),
            RaisedButton(
              child: Text('Delete'),
              onPressed: () async{
                await todo.delete(37);
              },
            ),
            RaisedButton(
              child: Text('Close'),
              onPressed: () {
                todo.close();
              },
            ),
          ],
        ),
      ),
    );
  }
}
