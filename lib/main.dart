import 'package:flutter/material.dart';
import 'screens/about us.dart';
import 'dart:async';
import 'package:dsc/screens/navbar.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        body1: TextStyle(color: Colors.black),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: splash_screen(),
    routes: {
      '/home' : (context) => Home(),
      '/navbar' : (context) =>mynavbar(),
    },
  ));
}

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(milliseconds: 1800 ),
    (){
        Navigator.pushReplacementNamed(context, '/navbar');
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TweenAnimationBuilder(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dsc-logo.jpg'),
              ),
            ),
          ),
          duration: Duration(milliseconds: 900),
          tween: Tween<double>(begin: 0 , end: 1),
          builder: (BuildContext context , double _val ,Widget child){
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.all(_val*23),
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }
}

