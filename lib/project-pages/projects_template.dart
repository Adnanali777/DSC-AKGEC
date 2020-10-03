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
    final double width = MediaQuery.of(context).size.width;
    return TweenAnimationBuilder(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 12,),
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.grey[350],style: BorderStyle.solid),
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Padding(
              padding: const EdgeInsets.only(right:7.0,left: 7),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.img),
                radius: 26,
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
              icon: Icon(AntDesign.github,size: 27,color: Colors.grey[700],),
            ),
          ),
        ),
      ),
      duration: Duration(milliseconds: 600),
      tween: Tween<double>(begin: -1.0 , end: 0),
      curve: Curves.easeInOutBack,
      builder: (BuildContext context , double _val , Widget child){
        return Transform(
          transform: Matrix4.translationValues(_val*width, 0.0, 0.0),
          child: child,
        );
      },
    );
  }
}