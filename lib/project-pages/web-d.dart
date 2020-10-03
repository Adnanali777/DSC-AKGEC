import 'package:flutter/material.dart';
import 'projects_template.dart';
class Web_d extends StatelessWidget {
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
                child: Image.asset('assets/web-dev-projects.png',fit: BoxFit.cover,),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
            template_design(img:'assets/user.png',title:'To-do List', text:'Hitesh Tripathi'),
            template_design(img:'assets/user.png',title: 'SEO-friendly Website', text:'Rahul Chauhan'),
            template_design(img:'assets/user.png', title:'Javascript Quiz Game', text:'Bhavik Singh'),
            template_design(img:'assets/user.png', title:'Javascript Drawing', text:'Arjun Singh'),
            template_design(img:'assets/user.png',title: 'Tribute Page',text: 'Abhishek Verma'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


