import 'package:flutter/material.dart';

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
          Text("STATUS ORDER", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
          SizedBox(height: size.height * 0.03),
          Image.asset("assets/detailDog.png", height: size.height * 0.35),
          Text("Charly, Jakarta", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          Text("Grooming", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
          Text("06 Februari 2020", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          SizedBox(height: size.height * 0.05),
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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("INFO", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(height: size.height * 0.03),
              Text("Tanggal : 6 Februari 2020", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
              Text("Nama Pelangan : Fahmi", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
              Text("Jenis Hewan : Anjing", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}