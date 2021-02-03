import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class SearchBoxs extends StatefulWidget {
  @override
  _SearchBoxsState createState() => _SearchBoxsState();
}

class _SearchBoxsState extends State<SearchBoxs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 15.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(0.30),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search,
                color: Colors.grey,
                ), 
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "   Search petCare ...",
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.bar_chart,color: kTextColor,),
              ],
            ),
          ),
    );
  }
}