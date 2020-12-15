import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String email, password;
  HomePage({@required this.email, @required this.password});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purple[200],
        elevation: 0,
    );
  }
}

