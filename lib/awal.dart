import 'package:flutter/material.dart';
import 'package:tubes_sipaw/login/login.dart';
import 'package:tubes_sipaw/login/register.dart';

class AwalPage extends StatefulWidget {
  @override
  _AwalPageState createState() => _AwalPageState();
}

class _AwalPageState extends State<AwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 256.0),
          children: [
            Image.asset(
              "assets/Logo.png",
              width: 200,
              height: 200,
              alignment: Alignment.center,
            ),
            SizedBox(height: 64.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
                side: BorderSide(
                  color: Color(0xFF1C314E)
                  )
                ),
                minWidth: 200.0,
                height: 48.0,
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                color: Color(0xFF1C314E),
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
                side: BorderSide(color: Colors.white)),
                minWidth: 200.0,
                height: 48.0,
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => register(),
                    ),
                  );
                },
                color: Colors.white,
                child: Text(
                  'Sign Up', 
                  style: TextStyle(
                    color: Color(0xFF1C314E)
                  )
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color(0xFF1C314E)
                )
              )
            )
          ],
        )
      ),
    );
  }
}