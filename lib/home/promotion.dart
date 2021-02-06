import 'package:flutter/material.dart';
import 'package:tubes_sipaw/petCare/pet_care.dart';

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
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetCare(),
                ),
              );
            },
          ),
          PromotionView(
            image: "assets/homePromotion2.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetCare(),
                ),
              );
            },
          ),
          PromotionView(
            image: "assets/homePromotion.png",
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

class PromotionView extends StatelessWidget {
  const PromotionView({
    Key key, 
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          child: Container(
        padding: const EdgeInsets.all(15),
        height: 145.0,
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
      onTap: press,
    );
  }
}
