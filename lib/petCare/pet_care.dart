import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/petCare/body_petcare.dart';


class PetCare extends StatefulWidget {
  @override
  _PetCareState createState() => _PetCareState();
}

class _PetCareState extends State<PetCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPetCares(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}
