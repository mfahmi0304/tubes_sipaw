import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/home/body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
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
            icon: Icon(Icons.favorite),
            title: Text('favorite'),
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
