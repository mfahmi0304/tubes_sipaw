import 'package:flutter/material.dart';
import 'package:tubes_sipaw/splashscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}