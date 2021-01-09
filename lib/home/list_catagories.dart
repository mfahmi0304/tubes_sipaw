import 'package:flutter/material.dart';
import 'package:tubes_sipaw/care/care.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/dayCare/day_care.dart';
import 'package:tubes_sipaw/petCare.dart/pet_care.dart';

class ListCatagoriesSipaw extends StatelessWidget {
  const ListCatagoriesSipaw({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CatagoriesSipaw(
            title: "Day Care",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DayCare(),
                ),
              );
            },
          ),
          CatagoriesSipaw(
            title: "Care",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Care(),
                ),
              );
            },
          ),
          CatagoriesSipaw(
            title: "Pet Care",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetCare(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CatagoriesSipaw extends StatelessWidget {
  const CatagoriesSipaw({
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
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 120.0,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: FlatButton(
                onPressed: press,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14,
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
