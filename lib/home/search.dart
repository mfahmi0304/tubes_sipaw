import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key, 
    this.colorGrey, 
    this.colorWhite, 
    
    
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  final Color colorGrey, colorWhite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          height: 44,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: colorGrey.withOpacity(0.30),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.search,
              color: colorGrey,
              ), 
              Expanded(
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "   Search petCare ...",
                    hintStyle: TextStyle(
                      color: colorGrey.withOpacity(0.5),
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
      ),
    );
  }
}
