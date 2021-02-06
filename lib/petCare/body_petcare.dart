import 'package:flutter/material.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:tubes_sipaw/petCare/categories_petcare.dart';
import 'package:tubes_sipaw/petCare/screen/screen_birdsdua.dart';
import 'package:tubes_sipaw/petCare/screen/screen_birdsempat.dart';
import 'package:tubes_sipaw/petCare/screen/screen_birdssatu.dart';
import 'package:tubes_sipaw/petCare/screen/screen_birdstiga.dart';
import 'package:tubes_sipaw/petCare/screen/screen_catsdua.dart';
import 'package:tubes_sipaw/petCare/screen/screen_catstiga.dart';
import 'package:tubes_sipaw/petCare/screen/screen_dogsatu..dart';
import 'package:tubes_sipaw/petCare/screen/screen_dogsdua.dart';
import 'package:tubes_sipaw/petCare/screen/screen_dogstiga.dart';
import 'package:tubes_sipaw/petCare/screen/screen_rabbitdua.dart';
import 'package:tubes_sipaw/petCare/screen/screen_rabbitempat.dart';
import 'package:tubes_sipaw/petCare/screen/screen_rabbitsatu.dart';
import 'package:tubes_sipaw/petCare/screen/screen_rabbittiga.dart';
import 'package:tubes_sipaw/petCare/screen/sreen_catssatu.dart';

class BodyPetCares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BodyPetCare(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesItems(
                image: "assets/Kucing2.png",
                title: "Cat Choize Tuna",
                berat: "1 KG",
                harga: "Rp.28.100,-",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenCatsDua(),
                    ),
                  );
                },
              ),
              CategoriesItems(
                image: "assets/kucing3.png",
                title: "Omegga Cat Tuna",
                berat: "1 KG",
                harga: "Rp.23.100,-",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenCatsTiga(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       CategoriesItems(
        //         image: "assets/Kelinci5.png",
        //         title: "Rabbit Food",
        //         berat: "1 KG",
        //         harga: "Rp.45.500,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenRabbitsEmpat(),
        //             ),
        //           );
        //         },
        //       ),
        //       CategoriesItems(
        //         image: "assets/Kelinci3.png",
        //         title: "Nova Mix Berri",
        //         berat: "1 KG",
        //         harga: "Rp.28.909,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenRabbitsTiga(),
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       CategoriesItems(
        //         image: "assets/Kelinci1.png",
        //         title: "Rabbit Food",
        //         berat: "1 KG",
        //         harga: "Rp.45.500,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenRabbitsSatu(),
        //             ),
        //           );
        //         },
        //       ),
        //       CategoriesItems(
        //         image: "assets/Kelinci2.png",
        //         title: "Srimurtigreenpet",
        //         berat: "500 Gram",
        //         harga: "Rp.7.600,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenRabbitsDua(),
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       CategoriesItems(
        //         image: "assets/Burung3.png",
        //         title: "FANCY 9 ",
        //         berat: "1 KG",
        //         harga: "Rp.19.500,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenBirdsTiga(),
        //             ),
        //           );
        //         },
        //       ),
        //       CategoriesItems(
        //         image: "assets/Burung4.png",
        //         title: "BnR Canary Bird",
        //         berat: "88 Gram",
        //         harga: "Rp.15.800,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenBirdsEmpat(),
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       CategoriesItems(
        //         image: "assets/Burung1.png",
        //         title: "Amazonian Parot",
        //         berat: "1 KG",
        //         harga: "Rp.94.500,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenBirdsSatu(),
        //             ),
        //           );
        //         },
        //       ),
        //       CategoriesItems(
        //         image: "assets/Burung2.png",
        //         title: "Phoenix Formula ",
        //         berat: "88 Gram",
        //         harga: "Rp.8.300,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenBirdsDua(),
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       CategoriesItems(
        //         image: "assets/Anjing5.png",
        //         title: "Anjing Adult Beef",
        //         berat: "800 gram",
        //         harga: "Rp.12.252,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenDogsTiga(),
        //             ),
        //           );
        //         },
        //       ),
        //       CategoriesItems(
        //         image: "assets/Anjing4.png",
        //         title: "Bolt Dog food",
        //         berat: "1 KG",
        //         harga: "Rp.17.500,-",
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ScreenDogsDua(),
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesItems(
                image: "assets/Kucing4.png",
                title: "Cat Repacking",
                berat: "1 KG",
                harga: "Rp.19.685,-",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenCatsSatu(),
                    ),
                  );
                },
              ),
              CategoriesItems(
                image: "assets/Anjing1.png",
                title: "Dog Supreme",
                berat: "1 KG",
                harga: "Rp.68.000,-",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenDogsSatu(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    Key key,
    this.image,
    this.press,
    this.title,
    this.harga, 
    this.berat,
  }) : super(key: key);
  final String image, title, harga, berat;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 10,
        bottom: 4,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: SingleChildScrollView(
                          child: Container(
                margin: EdgeInsets.only(
                ),
                padding: EdgeInsets.all(10 / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.purple[200].withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$berat\n",
                            style: TextStyle(color: kPrimaryColor, fontSize: 12),
                          ),
                          TextSpan(
                            text: "$harga\n",
                            style: TextStyle(color: kButtonSColor.withOpacity(0.5), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
