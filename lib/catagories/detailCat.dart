import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class ViewDetailCat extends StatelessWidget {
  const ViewDetailCat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Column(
          children: [
            Expanded(
              child: Container(
                color: kButtonsColor,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        )),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 250,
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(tag: 1, child: Image.asset('assets/detailCat.png')),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}