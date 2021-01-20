import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/LoginReg/Login/login_screen.dart';
import 'package:tubes_sipaw/LoginReg/Signup/components/body.dart';
import 'package:provider/provider.dart';
import 'package:tubes_sipaw/LoginReg/Signup/components/or_divider.dart';
import 'package:tubes_sipaw/LoginReg//Signup/components/social_icon.dart';
import 'package:tubes_sipaw/components/acc_check.dart';
import 'package:tubes_sipaw/components/rounded_button.dart';
import 'package:tubes_sipaw/components/rounded_input_field.dart';
import 'package:tubes_sipaw/components/rounded_password_field.dart';
import 'package:tubes_sipaw/libservices/authentication_service.dart'; 

// class SignUpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //To Toggle Password Text Visibility. 
  bool _obscureText = true;  
  String _username, _email, _password; 
    
  //For the loading state. 
  bool _isSubmitting;  
  
  final _formKey = GlobalKey<FormState>(); 
  final _scaffoldKey = GlobalKey<ScaffoldState>(); 
  
  FirebaseAuth auth = FirebaseAuth.instance; 
  final DateTime timestamp = DateTime.now(); 
  
  @override 
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;
    return Scaffold( 
      key: _scaffoldKey, 
      body: Container( 
        padding: EdgeInsets.symmetric(horizontal: 20), 
        child: Center( 
          child: SingleChildScrollView( 
            child: Form( 
              key: _formKey, 
              child: Column( 
                children: [ 
                  _showTitle(), 
                  SizedBox(height: size.height * 0.03),
                  _showUsernameInput(), 
                  _showEmailInput(), 
                  _showPasswordInput(), 
                  _showFormActions(), 
                  SizedBox(height: size.height * 0.03),
                  _showSocial(),
                ], 
              ), 
            ), 
          ), 
        ), 
      ), 
    ); 
  } 

  _showTitle() { 
    return Text(
      "SIGNUP",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  } 
   
  _showUsernameInput() { 
    return RoundedInputField( 
      hintText: "Nama",
      onChanged: (val) => _username = val, 
    );
  } 
  
  _showEmailInput() { 
    return RoundedInputField( 
      hintText: "Email",
      onChanged: (val) => _email = val, 
    ); 
  } 
  
  _showPasswordInput() { 
    return RoundedPasswordField( 
      onChanged: (val) => _password = val, 
    ); 
  } 
  
  _showFormActions() { 
    return Column( 
      children: [ 
        _isSubmitting == true
            ? CircularProgressIndicator( 
                valueColor: 
                    AlwaysStoppedAnimation(Theme.of(context).primaryColor), 
              ) 
            : RoundedButton(
            text: "SIGNUP",
            press: _submit
          ),
      ], 
    ); 
  } 

  _showSocial(){
    return Column(
      children: [
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
    );    
  }

  _submit() { 
    final _form = _formKey.currentState; 
    if (_form.validate()) { 
      _form.save(); 
      _registerUser(); 
    } else { 
      print("Form is Invalid"); 
    } 
  } 
    
  _registerUser() async { 
    setState(() { 
      _isSubmitting = true; 
    }); 
  
    final logMessage = await context 
        .read<AuthenticationService>() 
        .signUp(email: _email, password: _password); 
  
    logMessage == "Signed Up"
        ? _showSuccessSnack(logMessage) 
        : _showErrorSnack(logMessage); 
  
    print(logMessage); 
  
    if (logMessage == "Signed Up") { 
      createUserInFirestore(); 
      return Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return LoginScreen();
          }
        )
      ); 
    } else { 
      setState(() { 
        _isSubmitting = false; 
      }); 
    } 
  } 
  
  //When User "Signed Up", success snack will display. 
  _showSuccessSnack(String message) { 
    final snackbar = SnackBar( 
      backgroundColor: Colors.black, 
      content: Text( 
        "$message", 
        style: TextStyle(color: Colors.green), 
      ), 
    ); 
    _scaffoldKey.currentState.showSnackBar(snackbar); 
    _formKey.currentState.reset(); 
  } 
  
  //When FirebaseAuth Catches error, error snack will display. 
  _showErrorSnack(String message) { 
    final snackbar = SnackBar( 
      backgroundColor: Colors.black, 
      content: Text( 
        "$message", 
        style: TextStyle(color: Colors.red), 
      ), 
    ); 
    _scaffoldKey.currentState.showSnackBar(snackbar); 
  } 
  
  createUserInFirestore() async { 
    context.read<AuthenticationService>().addUserToDB( 
        uid: auth.currentUser.uid, 
        username: _username, 
        email: auth.currentUser.email, 
        timestamp: timestamp); 
  } 
}