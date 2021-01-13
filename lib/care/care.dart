import 'package:flutter/material.dart';
import 'package:tubes_sipaw/care/body_care.dart';
import 'package:tubes_sipaw/constants.dart';

class Care extends StatefulWidget {
  @override
  _CareState createState() => _CareState();
}

class _CareState extends State<Care> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyCare(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}
