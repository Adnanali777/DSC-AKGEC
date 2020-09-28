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
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.grey[350],style: BorderStyle.solid),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right:7.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.img),
              radius: 25,
            ),
          ),
          title: Text(widget.title,style: TextStyle(fontSize: 18,letterSpacing: 1.1,height: 1.35),),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical:8),
            child: Text(widget.text,style: TextStyle(letterSpacing: 1.1,fontSize: 14,height: 1.4),),
          ),
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