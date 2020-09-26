import 'package:flutter/material.dart';
import 'projects_template.dart';
class Web_d extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Development Projects',style: TextStyle(color: Colors.black),),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              template_design(img:'assets/user.png',title:'To-do List', text:'Hitesh Tripathi'),
              template_design(img:'assets/user.png',title: 'SEO-friendly Website', text:'Rahul Chauhan'),
              template_design(img:'assets/user.png', title:'Javascript Quiz Game', text:'Bhavik Singh'),
              template_design(img:'assets/user.png', title:'Javascript Drawing', text:'Arjun Singh'),
              template_design(img:'assets/user.png',title: 'Tribute Page',text: 'Abhishek Verma'),
            ],
          ),
        ),
      ),
    );
  }
}


