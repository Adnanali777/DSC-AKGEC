import 'package:flutter/material.dart';
import 'package:dsc/screens/OurTeam.dart';


class MemberLayout extends StatefulWidget {
  String name;
  String img;
  String memberType;
  String domain;
  MemberLayout({this.img,this.memberType,this.domain,this.name});

  @override
  _MemberLayoutState createState() => _MemberLayoutState();
}

class _MemberLayoutState extends State<MemberLayout> with SingleTickerProviderStateMixin{
  Animation animationteam;
  AnimationController animationControllerteam;
  @override
  void initState() {
    super.initState();
    animationControllerteam = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    animationteam = Tween<double>(begin: 1,end: 0).animate(CurvedAnimation(
      parent: animationControllerteam,
      curve: Interval(0.7,1.0,curve: Curves.fastOutSlowIn),
    ));
    animationControllerteam.forward();
    animationControllerteam.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        animationControllerteam.stop(canceled: true);
      }
    });
  }

  @override


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationControllerteam,
      builder: (BuildContext context,_){
        return Transform(
          transform: Matrix4.translationValues(0, animationteam.value*width, 0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*0.43,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:[ BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
              )],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 35,backgroundImage: AssetImage('assets/user.png'),),
                SizedBox(height: 10,),
                Text(widget.name,style: TextStyle(fontSize: 16,color: Colors.black,),),
                SizedBox(height: 8,),
                Text(widget.memberType,style: TextStyle(color: Colors.grey[600],fontSize: 11.7),),
                SizedBox(height: 8,),
                Text(widget.domain,style: TextStyle(color: Colors.grey[600],fontSize: 11.7),),
                SizedBox(height: 22,),
                Row(mainAxisAlignment:MainAxisAlignment.center,children: [linkedIn,SizedBox(width: 20,),github,SizedBox(width: 20,),twitter],),
              ],
            ),
          ),
        );
      },

    );
  }
}

