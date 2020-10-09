import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

GestureDetector twitter =GestureDetector(child:Icon(AntDesign.twitter,size: 20,color: Colors.blue,));
GestureDetector linkedIn = GestureDetector(child:Icon(AntDesign.linkedin_square,size: 20,color: Colors.blue,));
GestureDetector github = GestureDetector(child:Icon(AntDesign.github,size: 20,color: Colors.grey[800],));

class dscTeam extends StatefulWidget {
  @override
  _dscTeamState createState() => _dscTeamState();
}

class _dscTeamState extends State<dscTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  margin: EdgeInsets.fromLTRB(17, 30, 17, 10),
                  height: MediaQuery.of(context).size.height*0.47,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[700],
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(radius: 50,backgroundImage: AssetImage('assets/mansi_goel.jpg'),),
                          SizedBox(height: 10,),
                          Text('Mansi Goel',style: TextStyle(fontSize: 20,letterSpacing: 0.9,color: Colors.black),),
                          SizedBox(height: 12,),
                          Text('DSC LEAD',style: TextStyle(fontSize: 15,letterSpacing: 0.3,color: Colors.grey[600]),),
                          SizedBox(height: 17,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               linkedIn,
                              SizedBox(width: 39,),
                               github,
                              SizedBox(width: 39,),
                               twitter,
                            ],
                          ),
                          SizedBox(height: 30,),
                          Expanded(
                            child: Container(
                              child: Text('Trainee at bosch rexroth. LEAD at DSC by Google developers.Core team member at (techno-managerial society) horizon, core team member at DSC-AKGEC. Done internship of web development. Knowledge about pneumatics, hydraulics, plc.',style: TextStyle(fontSize: 13,color: Colors.grey[600],wordSpacing: 2.3),textAlign: TextAlign.center,softWrap: true,),
                            ),
                          ),
                        ],
                    ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
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
                        Text('Apoorva Jain',style: TextStyle(fontSize: 19.5,color: Colors.black,),),
                        SizedBox(height: 8,),
                        Text('Core Member',style: TextStyle(color: Colors.grey[600],fontSize: 12),),
                        SizedBox(height: 8,),
                        Text('Web Development',style: TextStyle(color: Colors.grey[600],fontSize: 12),),
                        SizedBox(height: 22,),
                        Row(mainAxisAlignment:MainAxisAlignment.center,children: [linkedIn,SizedBox(width: 20,),github,SizedBox(width: 20,),twitter],),
                      ],
                    ),
                 ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


