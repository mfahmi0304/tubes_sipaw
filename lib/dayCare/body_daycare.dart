import 'package:flutter/material.dart';
import 'package:tubes_sipaw/home/header.dart';

// ignore: must_be_immutable
class BodyDayCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithLogoBox(size: size),
          CityDayCare(
            title: "Jakarta",
            press: () {},
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CityDayCare extends StatelessWidget {
  const CityDayCare({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: press,
            child: Container(
              height: 50.0,
              width: 120.0,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
            ),
          ),
        ],
      ),
    );
  }
}
