import 'package:dsc/project-pages/app_dev.dart';
import 'package:dsc/project-pages/ui.dart';
import 'package:dsc/project-pages/ml.dart';
import 'package:dsc/project-pages/web-d.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with AutomaticKeepAliveClientMixin , SingleTickerProviderStateMixin{
  @override
  bool get wantKeepAlive => true;


  categories_cards category1 = categories_cards(image: 'assets/project-ml.png',text: 'Machine Learning',route: ml(),);
  categories_cards category2 = categories_cards(image: 'assets/newwebdev.png',text: 'Web Development',route: Web_d(),);
  categories_cards category3 = categories_cards(image: 'assets/ui-project.png',text: 'UI Designs',route: UI(),);
  categories_cards category4 = categories_cards(image: 'assets/hjhj.png',text: 'App Development',route: App_dev(),);
  Animation leftTransform1;
  AnimationController transformcontroller;
  Animation rightTransform1;
  Animation leftTransform2;
  Animation rightTransform2;
  @override
  void initState() {
    super.initState();
    transformcontroller = AnimationController(duration: Duration(milliseconds: 800),vsync: this);
    leftTransform1 = Tween<double>(begin: -1.0,end: 0.0).animate(CurvedAnimation(
      parent: transformcontroller,
      curve: Interval(0.0,0.25,curve:Curves.fastLinearToSlowEaseIn),
    ));
    rightTransform1 = Tween<double>(begin: 1.0,end: 0).animate(CurvedAnimation(
      parent: transformcontroller,
      curve: Interval(0.25,0.50,curve:Curves.fastLinearToSlowEaseIn),
    ));
    leftTransform2 = Tween<double>(begin: -1.0,end: 0.0).animate(CurvedAnimation(
      parent: transformcontroller,
      curve: Interval(0.50,0.75,curve:Curves.fastLinearToSlowEaseIn),
    ));
    rightTransform2 = Tween<double>(begin: 1.0,end: 0).animate(CurvedAnimation(
      parent: transformcontroller,
      curve: Interval(0.75,1,curve:Curves.fastLinearToSlowEaseIn),
    ));
    transformcontroller.forward();
  }
  @override
  void dispose() {
    transformcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: transformcontroller,
      builder: (BuildContext context , Widget child){
        return Scaffold(
          body: Center(
            child: Container(
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
                          Transform(
                           transform: Matrix4.translationValues(leftTransform1.value*width, 0, 0),
                           child: category1),
                          Transform(
                              transform: Matrix4.translationValues(rightTransform1.value*width, 0, 0),
                              child: category2),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Transform(
                              transform: Matrix4.translationValues(leftTransform2.value*width, 0, 0),
                              child: category3),
                          Transform(
                              transform: Matrix4.translationValues(rightTransform2.value*width, 0, 0),
                              child: category4),
                        ],
                      )
                    ],
                  ),
                ],
              ),

            ),
          ),
        );
      },
    );
  }
}

class categories_cards extends StatefulWidget {
  String image;
  String text;
  Widget route;
  categories_cards({this.image,this.text,this.route});

  @override
  _categories_cardsState createState() => _categories_cardsState();
}

class _categories_cardsState extends State<categories_cards> with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(9.5),
      height: MediaQuery.of(context).size.height*0.36,
      width: MediaQuery.of(context).size.width*0.45,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => widget.route));
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(widget.image,fit: BoxFit.fill,),
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(widget.text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,),),
            ),
          ),
        ],
      ),
    );
  }
}
