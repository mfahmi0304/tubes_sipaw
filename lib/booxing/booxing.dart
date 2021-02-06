import 'package:flutter/material.dart';
import 'package:tubes_sipaw/booxing/body_booxing.dart';
import 'package:tubes_sipaw/constants.dart';

class BooxingPage extends StatefulWidget {
  @override
  _BooxingPageState createState() => _BooxingPageState();
}

class _BooxingPageState extends State<BooxingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyBooxing(),     
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}



