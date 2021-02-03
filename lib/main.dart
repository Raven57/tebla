import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('TEBLA LOGIN'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 33, 33, 33)),
        body: LoginPage(),
      ),
    );
  }
}
