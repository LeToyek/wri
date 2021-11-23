import 'package:flutter/material.dart';
import 'package:wri/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(hintColor: Colors.black26),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
