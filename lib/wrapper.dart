import 'package:dsc/models/MyUser.dart';
import 'package:dsc/screens/navbar.dart';
import 'package:dsc/services/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Myuser>(context);
    if (user == null) {
      return LoginPage();
    } else {
      return mynavbar();
    }
  }
}
