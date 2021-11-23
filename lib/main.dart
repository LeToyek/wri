import 'package:flutter/material.dart';
import 'package:wri/Constants/Colors.dart';
import 'package:wri/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: colorForBackground, hintColor: lightGrey),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
