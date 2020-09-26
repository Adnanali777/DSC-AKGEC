import 'package:dsc/project-pages/app_dev.dart';
import 'package:dsc/project-pages/ui.dart';
import 'package:dsc/project-pages/ml.dart';
import 'package:dsc/project-pages/web-d.dart';
import 'package:dsc/shared/project-categories.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  categories_cards category1 = categories_cards(image: 'assets/project-ml.png',text: 'Machine Learning',route: ml(),);
  categories_cards category2 = categories_cards(image: 'assets/webd2.png',text: 'Web Development',route: Web_d(),);
  categories_cards category3 = categories_cards(image: 'assets/ui-project.png',text: 'UI Designs',route: UI(),);
  categories_cards category4 = categories_cards(image: 'assets/hjhj.png',text: 'App Development',route: App_dev(),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg-2.jpg'),fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(15),
              child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
            ),
            Column(
              children: [
                Row(
                  children: [
                    category1,
                    category2,
                  ],
                ),
                SizedBox(height: 18,),
                Row(
                  children: [
                    category3,
                    category4,
                  ],
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
