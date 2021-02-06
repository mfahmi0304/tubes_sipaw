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
  // ignore: deprecated_member_use
  final userRef = Firestore.instance.collection("users");
  UserModel _currentUser;

  // ignore: unused_field
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
              Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        // ignore: unnecessary_brace_in_string_interps
                        "${_username}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: Text(
                          // ignore: unnecessary_brace_in_string_interps
                          "${_email}",
                          style: TextStyle(
                              color: Colors.yellow[700],
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.yellow[700],
                    ),
                  ],
                ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: kButtonSColor),
                      child: Text(
                        "L O G O U T",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            //   Container(
            //   padding: EdgeInsets.all(8),
            //   color: Colors.white,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(bottom: 2),
            //         child: Text(
            //           "INFO ",
            //           style: TextStyle(
            //               color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
            //         ),
            //       ),
            //       Container(
            //   height: 0.5,
            //   color: Colors.yellow[700],
            // ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         'Tanggal                  : 6 Februari 2020',
            //         style: TextStyle(
            //             color: Colors.black, fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         'Nama Pelanggan  : Fahmi',
            //         style: TextStyle(
            //             color: Colors.black, fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         'Jenis Hewan         : Anjing',
            //         style: TextStyle(
            //             color: Colors.black, fontWeight: FontWeight.w500),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      )
    )
  );
  }
}
