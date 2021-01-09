import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/dayCare/body_daycare.dart';

class DayCare extends StatefulWidget {
  @override
  _DayCareState createState() => _DayCareState();
}

class _DayCareState extends State<DayCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyDayCare(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}
