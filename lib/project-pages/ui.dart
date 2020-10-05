import 'package:flutter/material.dart';
import 'projects_template.dart';
class UI extends StatefulWidget {

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  List<template_design> _uiProjects = [
    template_design(img:'assets/user.png',title:'Blog or Digital Publication', text:'Abhishek Singh'),
    template_design(img:'assets/user.png',title: 'Mobile App Design', text:'Manish Dixit'),
    template_design(img:'assets/user.png', title:'Email Drip Campaign', text:'Abhay Chaudhary'),
    template_design(img:'assets/user.png', title:'Web App Design', text:'Imran Alvi'),
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
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05),
                child: Image.asset('assets/ui-projects.png',fit: BoxFit.cover,),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context , index){
                return _uiProjects[index];
              },childCount:_uiProjects.length,
            ),
          ),
        ],
      ),
    );
  }
}