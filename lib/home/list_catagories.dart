import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

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
          CatagoriesSipaw(title: "Day Care"),
          CatagoriesSipaw(title: "Care"),
          CatagoriesSipaw(title: "Pet Care"),
        ],
      ),
    );
  }
}

class CatagoriesSipaw extends StatelessWidget {
  const CatagoriesSipaw({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 100.0,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
