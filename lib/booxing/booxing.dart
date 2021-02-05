import 'package:flutter/material.dart';
import 'package:tubes_sipaw/booxing/body_booxing.dart';
import 'package:tubes_sipaw/constants.dart';

class Care extends StatefulWidget {
  @override
  _BooxingState createState() => _BooxingState();
}

class _BooxingState extends State<BodyBooxing> {
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



