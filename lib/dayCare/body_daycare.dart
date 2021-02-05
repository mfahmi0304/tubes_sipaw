import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/dayCare/calender_daycare.dart';

class BodyDayCare extends StatefulWidget {
  @override
  _BodyDayCareState createState() => _BodyDayCareState();
}

class _BodyDayCareState extends State<BodyDayCare> {
  String selectedCity = "name";
  String selectedFrequencys = "image";
  String selectedFrequencyy = "images";

  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        cityWidget("JAKARTA", true),
                        cityWidget("BANDUNG", false),
                        cityWidget("BOGOR", false),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        pilihWidget("assets/daycareDog.png", "DOG", true),
                        pilihWidget("assets/cat.png", "CAT", false),
                        pilihWidget(
                            "assets/daycareRabbit.png", "RABBIT", false),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 70.0,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(15),
                            child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Name:',
                                labelStyle: TextStyle(color: Colors.grey),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            height: 40.0,
                            child: new TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Age:',
                                labelStyle: TextStyle(color: Colors.grey),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      new Flexible(
                        child: Container(
                          height: 40.0,
                          child: new TextField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelText: 'Sex:',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      new Flexible(
                        child: Container(
                          height: 40.0,
                          child: new TextField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelText: 'Color:',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Container(
                            height: 40.0,
                            child: new TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Weight:',
                                labelStyle: TextStyle(color: Colors.grey),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 70.0,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(15),
                            child: TextFormField(
                              maxLines: 3,
                              controller: nameController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'About:',
                                labelStyle: TextStyle(color: Colors.grey),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CalendarPages(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: kButtonSColor),
                              child: Text(
                                "N E X T",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void changeFrequency(String frequency) {
    selectedCity = frequency;
    setState(() {});
  }

  void changeFrequencys(String frequency) {
    selectedFrequencys = frequency;
    setState(() {});
  }

  void changesFrequency(String frequency) {
    selectedFrequencyy = frequency;
    setState(() {});
  }

  Container cityWidget(String name, bool isActive) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    changeFrequency(name);
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: (selectedCity == name)
                        ? BoxDecoration(
                            color: kButtonDCColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            color: kPrimaryColor,
                            border: Border.all(
                                color: kPrimaryColor.withOpacity(0.3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: InkWell(
                      onTap: () {
                        changeFrequency(name);
                      },
                      child: Center(
                        child: Text(
                          name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: (selectedCity == name)
                                  ? Colors.white
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container pilihWidget(String image, String text, bool isActive) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    changeFrequencys(image);
                  },
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    padding: const EdgeInsets.all(10),
                    decoration: (selectedFrequencys == image)
                        ? BoxDecoration(
                            color: kButtonDCColor,
                            borderRadius: BorderRadius.circular(50))
                        : BoxDecoration(
                            color: kPrimaryColor,
                            border: Border.all(
                                color: kPrimaryColor.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(image,
                        alignment: Alignment.center, color: Colors.white),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container katalogWidget(String images, String text, bool isActive) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    changesFrequency(images);
                  },
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    padding: const EdgeInsets.all(10),
                    decoration: (selectedFrequencyy == images)
                        ? BoxDecoration(
                            color: kButtonDCColor,
                            borderRadius: BorderRadius.circular(50))
                        : BoxDecoration(
                            color: kPrimaryColor,
                            border: Border.all(
                                color: kPrimaryColor.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(images,
                        alignment: Alignment.center, color: Colors.white),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
