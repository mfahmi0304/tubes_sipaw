import 'package:flutter/material.dart';

class PromotionViews extends StatelessWidget {
  const PromotionViews({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
                child: Row(
        children: <Widget>[
          PromotionView(
            image: "assets/homePromotion1.png",
          ),
          PromotionView(
            image: "assets/homePromotion2.png",
          ),
          PromotionView(
            image: "assets/homePromotion.png",
          ),
        ],
      ),
    );
  }
}

class PromotionView extends StatelessWidget {
  const PromotionView({
    Key key, 
    this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 155.0,
      child: Center(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
