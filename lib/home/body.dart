import 'package:flutter/material.dart';
import 'package:tubes_sipaw/home/catagories.dart';
import 'package:tubes_sipaw/home/header.dart';
import 'package:tubes_sipaw/home/list_catagories.dart';
import 'package:tubes_sipaw/home/promotion.dart';
import 'package:tubes_sipaw/home/search.dart';
import 'package:tubes_sipaw/home/title_promotion.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tubes_sipaw/libmodels/user_model.dart';
import 'package:tubes_sipaw/libservices/authentication_service.dart'; 
import 'package:provider/provider.dart'; 

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseAuth auth = FirebaseAuth.instance; 
  final userRef = Firestore.instance.collection("users"); 
  UserModel _currentUser; 
  
  String _uid; 
  String _username; 
  String _email; 

  @override 
  void initState() { 
    super.initState(); 
    getCurrentUser(); 
  } 
  
  getCurrentUser() async { 
    UserModel currentUser = await context 
        .read<AuthenticationService>() 
        .getUserFromDB(uid: auth.currentUser.uid); 
  
    _currentUser = currentUser; 
  
    print("${_currentUser.username}"); 
  
    setState(() { 
      _uid = _currentUser.uid; 
      _username = _currentUser.username; 
      _email = _currentUser.email; 
    }); 
  } 

   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithLogoBox(size: size),
          // TitleWithNames(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/profile.png"),
                      backgroundColor: kButtonsColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.0, top: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${_username}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: kButtonColor,
                                size: 12,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Bandung",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: kButtonColor,)
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SearchBoxs(),
          CatagoryWithPet(),
          ListCatagoriesSipaw(),
          TitleWithPromotions(),
          PromotionViews(),
        ],
      ),
    );
  }
}