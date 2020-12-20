import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tubes_sipaw/login/login.dart';

class register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        title: Text('Sign Up',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          // top: 0,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Retype Password',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Sign Up'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  if (emailController.text == '' ||
                      passwordController.text == '') {
                    showToast('Masukkan username atau password');
                  } else {
                    if (emailController.text == 'Ramdan@gmail.' &&
                        passwordController.text == '123456') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(
                            username: emailController.text,
                            password: passwordController.text,
                          ),
                        ),
                      );
                    } else {
                      showToast('Username Password Salah');
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}