import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var username = "";
  var password = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'USERNAME cannot be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'USERNAME',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(20),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password cannot be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'PASSWORD',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  }))
        ],
      ),
    );
  }
}
