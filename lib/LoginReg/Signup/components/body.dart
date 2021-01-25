import 'package:flutter/material.dart';
import 'package:tubes_sipaw/LoginReg//Login/login_screen.dart';
import 'package:tubes_sipaw/LoginReg//Signup/components/background.dart';
import 'package:tubes_sipaw/LoginReg//Signup/components/or_divider.dart';
import 'package:tubes_sipaw/LoginReg//Signup/components/social_icon.dart';
import 'package:tubes_sipaw/components/acc_check.dart';
import 'package:tubes_sipaw/components/rounded_button.dart';
import 'package:tubes_sipaw/components/rounded_input_field.dart';
import 'package:tubes_sipaw/components/rounded_password_field.dart';
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart'; 

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Nama",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
