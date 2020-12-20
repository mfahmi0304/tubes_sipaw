import 'package:flutter/material.dart';
import 'package:tubes_sipaw/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi SiPaw',
      home: HomePage(),
    );
  }
}
