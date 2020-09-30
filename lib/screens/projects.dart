import 'package:dsc/project-pages/app_dev.dart';
import 'package:dsc/project-pages/ui.dart';
import 'package:dsc/project-pages/ml.dart';
import 'package:dsc/project-pages/web-d.dart';
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
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(15),
              child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black,fontFamily: 'PoiretOne',letterSpacing: 1.2),),
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

class categories_cards extends StatelessWidget {
  String image;
  String text;
  Widget route;
  categories_cards({this.image,this.text,this.route});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5), 
      margin: EdgeInsets.all(9.5),
      width:MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        ),],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            flex:6,
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => route));
                },
                child: Image.asset(image,fit: BoxFit.fill,)
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(

              margin: EdgeInsets.only(top: 10),
              child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,),),
            ),
          ),
        ],
      ),
    );
  }
}
