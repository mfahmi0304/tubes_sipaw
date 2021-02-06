
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
class BodyPetCare extends StatefulWidget {
  @override
  _BodyPetCareState createState() => _BodyPetCareState();
}

class _BodyPetCareState extends State<BodyPetCare> {
  List<String> categories = ["All", "Dogs", "Cats", "Rabbits", "Birds"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 27.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriesItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriesItem(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 5.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          decoration: BoxDecoration(
            color: selectedIndex == index ? kButtonSColor : Colors.transparent,
            borderRadius: BorderRadius.circular(16.0)
          ),
          child: Text(
            categories[index],
            style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex == index ? kPrimaryColor : kButtonSColor),
          ),
        ),
    );
  }
}
