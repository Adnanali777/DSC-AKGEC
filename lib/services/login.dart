import 'package:dsc/models/MyUser.dart';
import 'package:dsc/screens/home.dart';
import 'package:dsc/screens/navbar.dart';
import 'package:dsc/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String error = '';
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset('assets/login.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0,
                      color: Colors.grey[800],
                      style: BorderStyle.solid),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton.icon(
                  onPressed: () async {
                    dynamic result = await _auth.signInWithGoogle();
                    if (result == null) {
                      setState(() {
                        error = "Login unsuccesfull";
                      });
                    }
                  },
                  icon: Icon(AntDesign.google),
                  label: Text(
                    'Sign In with Google',
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  ),
                ),
              ),
              Text(error,style: TextStyle(color: Colors.red,fontSize: 18,letterSpacing: 1.0),),
            ],
          ),
        ),
      ),
    );
  }
}
