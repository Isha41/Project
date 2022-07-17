import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:project/homepage.dart';
import 'package:project/signup.dart';

import 'bottom.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SizedBox(
                      height: 77,
                      width: 84,
                      child: Image.asset("assest/_ic_logo.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'SHOW',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 68,
              ),
              Text(
                'Login to your Account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              NameField('Enter Email', Icons.email, 'Email'),
              PasswordField(Icons.lock, Icons.visibility, 'Enter your password',
                  'Password'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 10),
                    child: Icon(Icons.check_box),
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3F84FC),
                  onPrimary: Colors.white,
                  fixedSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Bottom();
                  }));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'or sign in with',
                style: TextStyle(fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook_sharp),
                  Icon(Icons.bedtime_rounded)
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUp();
                      }));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NameField extends StatelessWidget {
  NameField(this.hintText, this.icon, this.labelText);
  var hintText;
  var labelText;
  var icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  PasswordField(this.picon, this.sicon, this.htext, this.ltext);
  var picon;
  var sicon;
  var ltext;
  var htext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(picon),
            suffixIcon: Icon(sicon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            labelText: ltext,
            hintText: htext),
      ),
    );
  }
}
