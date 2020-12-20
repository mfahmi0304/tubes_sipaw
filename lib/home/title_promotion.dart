import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class TitleWithPromotions extends StatelessWidget {
  const TitleWithPromotions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TitleWithPromotion(
          title : "Promotion",
        ),
        
      ],
    );
  }
}

class TitleWithPromotion extends StatelessWidget {
  const TitleWithPromotion({
    Key key, 
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10.0),
      child: Container(
        height: 17,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10 / 4),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: 10 / 4),
                height: 5,
                color: kButtonColor.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
