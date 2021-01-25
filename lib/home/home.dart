import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/history/story.dart';
import 'package:tubes_sipaw/home/body.dart';
import 'package:tubes_sipaw/petCare.dart/pet_care.dart';
import 'package:tubes_sipaw/profile/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),    
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Body(),
            StoryPage(),
            PetCare(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
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
