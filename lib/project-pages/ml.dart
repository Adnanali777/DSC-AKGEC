import 'package:flutter/material.dart';
import 'projects_template.dart';
class ml extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Learning Projects',style: TextStyle(color: Colors.black),),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            template_design(img:'assets/user.png',title:'Cartoonify Image with Machine Learning', text:'Sangwan Singh'),
            template_design(img:'assets/user.png',title: 'Emojify – Create your own emoji with Python', text:'Ashish Kumar'),
            template_design(img:'assets/user.png', title:'Housing Prices Prediction Project', text:'Mohd Zishan'),
            template_design(img:'assets/user.png', title:'Wine Quality Test Project', text:'Garima Singh'),
          ],
        ),
      ),
    );
  }
}