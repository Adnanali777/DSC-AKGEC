import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';
class template_design extends StatefulWidget {
  String img;
  String title;
  String text;
  template_design({this.img,this.title,this.text});

  @override
  _template_designState createState() => _template_designState();
}

class _template_designState extends State<template_design> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.img),
            radius: 20,
          ),
          title: Text(widget.title,style: TextStyle(fontSize: 18,letterSpacing: 1.1,height: 1.35),),
          subtitle: Text(widget.text,style: TextStyle(letterSpacing: 1.1,fontSize: 14,height: 1.4),),
          trailing: IconButton(
            onPressed: ()async{
              const url = 'https://github.com/';
              if (await canLaunch(url)) {
              await launch(url);
              } else {
              throw 'Could not launch $url';
              }
            },
            icon: Icon(AntDesign.github,size: 27,),
          ),
        ),
      ),
    );
  }
}