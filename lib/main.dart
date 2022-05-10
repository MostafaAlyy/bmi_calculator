// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'screens/Home_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.amber),
    );
  }
}
