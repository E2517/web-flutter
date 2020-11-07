import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Happy Coding with Flutter',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FULL STAK DEVELOPER',
              style: TextStyle(fontSize: 36.0, color: Colors.yellow)),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text(
              'e2517',
              style: TextStyle(fontSize: 40.0, color: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}
