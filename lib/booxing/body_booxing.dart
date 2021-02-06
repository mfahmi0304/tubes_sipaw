import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';

class BodyBooxing extends StatefulWidget {
  @override
  _BodyBooxingState createState() => _BodyBooxingState();
}

class _BodyBooxingState extends State<BodyBooxing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ProfDesc(),
            ProfInfo(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ProfDesc extends StatelessWidget {
  const ProfDesc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "STATUS ORDER",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 18),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset("assets/detailDog.png", height: size.height * 0.30),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Charly, Jakarta",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Grooming',
                    style: TextStyle(
                        color: Colors.yellow[700], fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Center(
                    child: Text(
                      '06 February 2021',
                      style: TextStyle(
                          color: Colors.yellow[700], fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.1,
                ),
                Container(
                  height: 0.5,
                  color: Colors.yellow[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(left: 5, right: 5),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      "INFO ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  Container(
              height: 0.5,
              color: Colors.yellow[700],
            ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tanggal                  : 6 Februari 2020',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Nama Pelanggan  : Fahmi',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Jenis Hewan         : Anjing',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
