import 'package:flutter/material.dart';
import 'package:tubes_sipaw/booxing/body_booxing.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBooxing(),
    );
  }
}