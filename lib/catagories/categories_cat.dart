import 'package:flutter/material.dart';
import 'package:tubes_sipaw/care/care.dart';
import 'package:tubes_sipaw/constants.dart';

class CategoriesCutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: kButtonsColor,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Container(
                width: 230,
                margin: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child:
                      Hero(tag: 1, child: Image.asset('assets/detailCat.png')),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 30,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Perawatan Kucing",
                    style: TextStyle(
                      color: kButtonSColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 200),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Perawatan Kucing peliharaan sangatlah diperlukan dan sangat penting untuk menjauhkan dari berbagai penyakit hewan",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.yellow[700],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(top: 380),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Hal yang harus dilakukan adalah tempatnya harus bersih, dimana tempat adalah salah satu sarana yang sangat wajib untuk menjaga kesehatan hewan kesayangan kita, kemudian juga peralatan yang dipakai harus bersih,kemudian kita juga harus bersih sehingga saat melakukan perawatan jewan kita terjadi kebersihannya",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Care();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: kButtonSColor),
                      child: Text(
                        "C A R E",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
