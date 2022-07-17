import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                  'Create your account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                NameField('Enter Email', Icons.email, 'Email'),
                PasswordField(Icons.lock, Icons.visibility,
                    'Enter your password', 'Password'),
                PasswordField(Icons.lock, Icons.visibility,
                    'Enter Password again', 'Conform  Password'),
              ],
            ),
          ),
        ));
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
