import 'package:flutter/material.dart';
import 'package:tubes_sipaw/LoginReg/Login/login_screen.dart';
import 'package:tubes_sipaw/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tubes_sipaw/libmodels/user_model.dart';
import 'package:tubes_sipaw/libservices/authentication_service.dart'; 
import 'package:provider/provider.dart'; 

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/profile.png",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "${_username}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: kTextColor,
                  ),
                )
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "${_email}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: kTextColor,
                  ),
                )
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: new Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
