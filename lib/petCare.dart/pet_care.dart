import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/dayCare/body_daycare.dart';

class PetCare extends StatefulWidget {
  @override
  _PetCareState createState() => _PetCareState();
}

class _PetCareState extends State<PetCare> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyDayCare(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kNavColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.date_range),
            title: Text('Booxing'),
            activeColor: kNavsColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag),
            title: Text('PetCare'),
            activeColor: kNaviColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: kNavisColor,
            inactiveColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}
