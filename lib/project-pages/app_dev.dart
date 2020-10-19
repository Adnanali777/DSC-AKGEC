import 'package:flutter/material.dart';
import 'projects_template.dart';
class App_dev extends StatefulWidget {

  @override
  _App_devState createState() => _App_devState();
}

class _App_devState extends State<App_dev> {
  List<template_design> _appProjects = [
    template_design(img:'assets/user.png',title:'Android-based Function Generator', text:'Adnan Ali'),
    template_design(img:'assets/user.png',title: 'Software-defined Radio ', text:'Bhushan Kumar'),
    template_design(img:'assets/user.png', title:'IoT-based Notification System', text:'Shivani Singh'),
    template_design(img:'assets/user.png', title:'Smart Travel Guide Application', text:'Anjali Chauhan'),
    template_design(img:'assets/user.png', title:'Surveillance Camera', text:'Mahira Khan'),
    template_design(img:'assets/user.png', title:'Android Controlled Robot', text:'Ayush Saxena'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05),
                child: Image.asset('assets/app-dev-projects.png',fit: BoxFit.contain,),
              ),
            ),
          ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context , index){
              return _appProjects[index];
            },childCount:_appProjects.length,
          ),
         ),
        ],
      ),
    );
  }
}