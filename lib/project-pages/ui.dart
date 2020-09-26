import 'package:flutter/material.dart';
import 'projects_template.dart';
class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Design Projects',style: TextStyle(color: Colors.black),),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            template_design(img:'assets/user.png',title:'Blog or Digital Publication', text:'Abhishek Singh'),
            template_design(img:'assets/user.png',title: 'Mobile App Design', text:'Manish Dixit'),
            template_design(img:'assets/user.png', title:'Email Drip Campaign', text:'Abhay Chaudhary'),
            template_design(img:'assets/user.png', title:'Web App Design', text:'Imran Alvi'),
          ],
        ),
      ),
    );
  }
}