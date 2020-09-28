import 'package:flutter/material.dart';
import 'projects_template.dart';
class ml extends StatelessWidget {

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
          background: Image.asset('assets/ml-projects.png',fit: BoxFit.cover,),
        ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
              [
                template_design(img:'assets/user.png',title:'Cartoonify Image with Machine Learning', text:'Sangwan Singh'),
                template_design(img:'assets/user.png',title: 'Emojify – Create your own emoji with Python', text:'Ashish Kumar'),
                template_design(img:'assets/user.png', title:'Housing Prices Prediction Project', text:'Mohd Zishan'),
                template_design(img:'assets/user.png', title:'Wine Quality Test Project', text:'Garima Singh'),
              ],
            ),
        ),
        ],
      ),

    );
  }
}