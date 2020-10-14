import 'package:dsc/project-pages/app_dev.dart';
import 'package:dsc/project-pages/ui.dart';
import 'package:dsc/project-pages/ml.dart';
import 'package:dsc/project-pages/web-d.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  categories_cards category1 = categories_cards(image: 'assets/project-ml.png',text: 'Machine Learning',route: ml(),);
  categories_cards category2 = categories_cards(image: 'assets/newwebdev.png',text: 'Web Development',route: Web_d(),);
  categories_cards category3 = categories_cards(image: 'assets/ui-project.png',text: 'UI Designs',route: UI(),);
  categories_cards category4 = categories_cards(image: 'assets/hjhj.png',text: 'App Development',route: App_dev(),);
  @override
  Widget build(BuildContext context) {
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
                      category1,
                      category2,
                    ],
                  ),
                  SizedBox(height: 10,),
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
      ),
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

class _categories_cardsState extends State<categories_cards> with SingleTickerProviderStateMixin{
  AnimationController animationproject;
  Animation animatewidth;
  Animation animateheight;
  final double width = 0.45;
  final double height = 0.36;
  @override
  void initState() {
    super.initState();
    animationproject = AnimationController(duration: Duration(milliseconds: 350),vsync: this);
    animatewidth = Tween<double>(begin: 0,end: width).animate(CurvedAnimation(
      parent: animationproject,
      curve: Curves.fastLinearToSlowEaseIn,
    ));
    animateheight = Tween<double>(begin: 0,end: height).animate(CurvedAnimation(
      parent: animationproject,
      curve: Curves.fastLinearToSlowEaseIn,
    ));
    animationproject.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationproject.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationproject,
      builder: (BuildContext context , Widget child){
        return Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(9.5),
          height: MediaQuery.of(context).size.height*animateheight.value,
          width: MediaQuery.of(context).size.width*animatewidth.value,
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
      },
    );
  }
}
