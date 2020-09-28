import 'package:flutter/material.dart';
import 'projects_template.dart';
class App_dev extends StatelessWidget {

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
              background: Image.asset('assets/app-dev-projects.png',fit: BoxFit.cover,),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                template_design(img:'assets/user.png',title:'Android-based Function Generator', text:'Adnan Ali'),
                template_design(img:'assets/user.png',title: 'Software-defined Radio ', text:'Bhushan Kumar'),
                template_design(img:'assets/user.png', title:'IoT-based Notification System', text:'Shivani Singh'),
                template_design(img:'assets/user.png', title:'Smart Travel Guide Application', text:'Anjali Chauhan'),
                template_design(img:'assets/user.png', title:'Surveillance Camera', text:'Mahira Khan'),
                template_design(img:'assets/user.png', title:'Android Controlled Robot', text:'Ayush Saxena'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}