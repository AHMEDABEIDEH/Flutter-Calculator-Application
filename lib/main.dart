import 'package:assignment_1/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.green.shade50,
      ),
      home: Home(),
    );
  }
}
