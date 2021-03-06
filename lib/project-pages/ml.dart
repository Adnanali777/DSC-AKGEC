import 'package:flutter/material.dart';
import 'projects_template.dart';
class ml extends StatefulWidget {

  @override
  _mlState createState() => _mlState();
}

class _mlState extends State<ml> {
  List<template_design> _mlProjects = [
    template_design(img:'assets/user.png',title:'Cartoonify Image with Machine Learning', text:'Sangwan Singh'),
    template_design(img:'assets/user.png',title: 'Emojify – Create your own emoji with Python', text:'Ashish Kumar'),
    template_design(img:'assets/user.png', title:'Housing Prices Prediction Project', text:'Mohd Zishan'),
    template_design(img:'assets/user.png', title:'Wine Quality Test Project', text:'Garima Singh'),
  ];
  final GlobalKey _listKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
             background: Padding(
               padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.03),
               child: Image.asset('assets/ml-projects.png',fit: BoxFit.contain,height: double.infinity,),
             ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context , index){
                  return _mlProjects[index];
                },childCount:_mlProjects.length,
            ),
        ),
        ],
      ),

    );
  }
}