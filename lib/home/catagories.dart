import 'package:flutter/material.dart';
import 'package:tubes_sipaw/catagories/categories_cat.dart';
import 'package:tubes_sipaw/catagories/categories_dog.dart';
import 'package:tubes_sipaw/catagories/categories_fish.dart';
import 'package:tubes_sipaw/catagories/categories_rabbit.dart';
import 'package:tubes_sipaw/constants.dart';

class CatagoryWithPet extends StatelessWidget {
  const CatagoryWithPet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CatagoriesPet(
          image: "assets/homeDog.png",
          title: "Dog",
          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesDogPage(),
                ),
              );
            },
        ),
        CatagoriesPet(
          image: "assets/cat.png",
          title: "Cat",
          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesCutPage(),
                ),
              );
            },
        ),
        CatagoriesPet(
          image: "assets/homeBird.png",
          title: "Bird",
          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesRabbitPage(),
                ),
              );
            },
        ),
        CatagoriesPet(
          image: "assets/homeFish.png",
          title: "Fish",
          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesFishPage(),
                ),
              );
            },
        ),
      ],
    );
  }
}

class CatagoriesPet extends StatelessWidget {
  const CatagoriesPet({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              height: 60.0,
              width: 60.0,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(image,
                  alignment: Alignment.center, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
