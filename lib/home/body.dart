import 'package:flutter/material.dart';
import 'package:tubes_sipaw/home/catagories.dart';
import 'package:tubes_sipaw/home/header.dart';
import 'package:tubes_sipaw/home/list_catagories.dart';
import 'package:tubes_sipaw/home/profile_With_Name.dart';
import 'package:tubes_sipaw/home/promotion.dart';
import 'package:tubes_sipaw/home/search.dart';
import 'package:tubes_sipaw/home/title_promotion.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithLogoBox(size: size),
          TitleWithNames(),
          SearchBoxs(),
          CatagoryWithPet(),
          ListCatagoriesSipaw(),
          TitleWithPromotions(),
          PromotionViews(),
        ],
      ),
    );
  }
}

// class BodyPage extends StatefulWidget {
//   @override
//   _BodyPageState createState() => _BodyPageState();
// }

// class _BodyPageState extends State<BodyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

