import 'package:flutter/material.dart';
import 'package:sample_ui/view/homepag.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "haaaaaaaaaaaha",
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: HomePage(),
    );
  }
}
