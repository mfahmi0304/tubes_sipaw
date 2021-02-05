import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter/material.dart';
import 'package:tubes_sipaw/components/rounded_button.dart';
import 'package:tubes_sipaw/components/rounded_input_field.dart';
import 'package:tubes_sipaw/components/rounded_password_field.dart';
import 'package:tubes_sipaw/home/home.dart';
import 'package:tubes_sipaw/libservices/authentication_service.dart';
import 'package:provider/provider.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: unused_field
  bool _obscureText = true; 
  String _email, _password; 
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
                  Image.asset("assets/Logo.png",
                    height: size.height * 0.35,
                  ),
                  _showEmailInput(), 
                  _showPasswordInput(), 
                  _showFormActions() 
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
      "LOGIN",
      style: TextStyle(fontWeight: FontWeight.bold),
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
    return Padding( 
      padding: EdgeInsets.only(top: 20), 
      child: Column( 
        children: [ 
          _isSubmitting == true
              ? CircularProgressIndicator( 
                  valueColor: 
                      AlwaysStoppedAnimation(Theme.of(context).primaryColor), 
                ) 
              : RoundedButton(
            text: "LOGIN",
            press: _submit
          ),
        ], 
      ), 
    ); 
  } 
  
  _submit() { 
    final _form = _formKey.currentState; 
    if (_form.validate()) { 
      _form.save(); 
      //print("Email $_email, Password $_password"); 
      _LoginUser(); 
    } else { 
      print("Form is Invalid"); 
    } 
  } 
  
  // ignore: non_constant_identifier_names
  _LoginUser() async { 
    setState(() { 
      _isSubmitting = true; 
    }); 
  
    final logMessage = await context 
        .read<AuthenticationService>() 
        .signIn(email: _email, password: _password); 
  
    logMessage == "Signed In"
        ? _showSuccessSnack(logMessage) 
        : _showErrorSnack(logMessage); 
  
    //print("I am logMessage $logMessage"); 
  
    if (logMessage == "Signed In") { 
      return Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return HomePage();
          }
        )
      ); 
    } else { 
      setState(() { 
        _isSubmitting = false; 
      }); 
    } 
  } 
  
  _showSuccessSnack(String message) async { 
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
  
  _showErrorSnack(String message) { 
    final snackbar = SnackBar( 
      backgroundColor: Colors.black, 
      content: Text( 
        "$message", 
        style: TextStyle(color: Colors.red), 
      ), 
    ); 
    _scaffoldKey.currentState.showSnackBar(snackbar); 
    setState(() { 
      _isSubmitting = false; 
    }); 
  } 
}
