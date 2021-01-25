import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
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
          KatagoriScreen(),
        ],
      ),
    );
  }
}

class KatagoriScreen extends StatefulWidget {
  @override
  _KatagoriScreenState createState() => _KatagoriScreenState();
}

class _KatagoriScreenState extends State<KatagoriScreen> {
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 110,
                decoration: (selectedFrequency == "Bandung")
                    ? BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)))
                    : BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    "Bandung",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (selectedFrequency == "Bandung")
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
