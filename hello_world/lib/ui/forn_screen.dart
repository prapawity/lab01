import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  @override
  Myform createState() {
    // TODO: implement createState
    return Myform();
  }
}

class Myform extends State<FromScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "E-mail",
                hintText: "Please input Email",
                icon: Icon(Icons.email),

                ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "please input text full";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input password",
                icon: Icon(Icons.lock),

                ),
              obscureText: true,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "please input text full";
                }
              },
            ),
            RaisedButton(
              child: Text("pachorn"),
              onPressed: () {
                _formKey.currentState.validate();
              },
            ),
            Image.asset("resource/pic.png",height: 100,)
          ],
        ),
      ),
    );
  }
}
