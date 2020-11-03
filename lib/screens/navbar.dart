import 'package:dsc/models/MyUser.dart';
import 'package:dsc/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:dsc/screens/home.dart';
import 'package:dsc/screens/events.dart';
import 'package:dsc/screens/projects.dart';
import 'package:dsc/screens/aboutUs.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/rendering/box.dart';

class mynavbar extends StatefulWidget {
  @override
  _mynavbarState createState() => _mynavbarState();
}

class _mynavbarState extends State<mynavbar> {
  int currentindex = 0;
  List<Widget> children = [
    Home(),
    Events(),
    Projects(),
    Team(),

  ];
  void onTapped(index){
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: children[currentindex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentindex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.blue,
      onTap: onTapped,
      items: [
        BottomNavigationBarItem(
    title: Text('Home'),
    icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
    title: Text('Events'),
    icon: Icon(Icons.event),
        ),
        BottomNavigationBarItem(
    title: Text('Projects'),
    icon: Icon(Icons.build),
        ),
        BottomNavigationBarItem(
    title: Text('About Us'),
    icon: Icon(Icons.info),
        ),
      ],
    ),
        );
  }
}
