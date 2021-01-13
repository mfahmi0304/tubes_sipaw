import 'package:flutter/material.dart';
import 'package:tubes_sipaw/home/header.dart';

class BodyPetCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithLogoBox(size: size),
          
        ],
      ),
    );
  }
}
