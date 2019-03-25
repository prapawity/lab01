import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(),
              TextFormField(),
              Expanded(
                child: RaisedButton(
                  child: Text("SignIn"),
                  onPressed: () {},
                ),
              ),
              FlatButton(
                child: Text("Register New User"),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
