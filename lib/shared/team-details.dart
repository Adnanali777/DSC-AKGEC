import 'package:flutter/material.dart';
import 'package:dsc/screens/OurTeam.dart';
import 'package:url_launcher/url_launcher.dart';


class MemberLayout extends StatefulWidget {
  String name;
  String img;
  String memberType;
  String domain;
  MemberLayout({this.img,this.memberType,this.domain,this.name});


  @override
  _MemberLayoutState createState() => _MemberLayoutState();
}

class _MemberLayoutState extends State<MemberLayout> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;




  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return TweenAnimationBuilder(
      child: SafeArea(
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
              Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                GestureDetector(
                    onTap: ()async{
                      const url = 'https://www.linkedin.com/feed/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: linkedIn),
                SizedBox(width: 20,),
                GestureDetector(
                    onTap: ()async{
                      const url = 'https://github.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: github),
                SizedBox(width: 20,),
                GestureDetector(
                    onTap: ()async{
                      const url = 'https://twitter.com/home?lang=en';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: twitter),
              ],
              ),
            ],
          ),
        ),
      ),
        duration: Duration(milliseconds: 650),
        tween: Tween<double>(begin: 1.0 , end: 0),
        curve: Interval(0.8,1,curve:Curves.fastOutSlowIn),
        builder: (BuildContext context , double _val , Widget child) {
          return Transform(
            transform: Matrix4.translationValues(0, _val * width, 0.0),
            child: child,
          );
        }
    );
  }
}

