import 'package:flutter/material.dart';
import 'package:dsc/screens/OurTeam.dart';


class MemberLayout extends StatelessWidget {
  String name;
  String img;
  String memberType;
  String domain;
  MemberLayout({this.img,this.memberType,this.domain,this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(name,style: TextStyle(fontSize: 16,color: Colors.black,),),
          SizedBox(height: 8,),
          Text(memberType,style: TextStyle(color: Colors.grey[600],fontSize: 11.7),),
          SizedBox(height: 8,),
          Text(domain,style: TextStyle(color: Colors.grey[600],fontSize: 11.7),),
          SizedBox(height: 22,),
          Row(mainAxisAlignment:MainAxisAlignment.center,children: [linkedIn,SizedBox(width: 20,),github,SizedBox(width: 20,),twitter],),
        ],
      ),
    );
  }
}

