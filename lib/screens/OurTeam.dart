import 'package:dsc/shared/team-details.dart';
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
  List<MemberLayout> members = [
    MemberLayout(img: 'assets/user.png',name: 'Apoorv Jain',memberType: 'Core Member',domain: 'Machine Learning'),
    MemberLayout(img: 'assets/user.png',name: 'Tarun Raghav',memberType: 'Core Member',domain: 'Machine Learning'),
    MemberLayout(img: 'assets/user.png',name: 'Pranjul Itondia',memberType: 'Core Member',domain: 'Machine Learning'),
    MemberLayout(img: 'assets/user.png',name: 'Nihal Choudhary',memberType: 'Core Member',domain: 'Machine Learning'),
    MemberLayout(img: 'assets/user.png',name: 'Vishesh Kushwaha',memberType: 'Core Member',domain: 'Machine Learning'),
    MemberLayout(img: 'assets/user.png',name: 'Krishna Agrawal',memberType: 'Core Member',domain: 'Web Development'),
    MemberLayout(img: 'assets/user.png',name: 'Hitesh Tripathi',memberType: 'Core Member',domain: 'Web Development'),
    MemberLayout(img: 'assets/user.png',name: 'Shivam Bisht',memberType: 'Core Member',domain: 'Web Development'),
    MemberLayout(img: 'assets/user.png',name: 'Himani Chauhan',memberType: 'Core Member',domain: 'Web Development'),
    MemberLayout(img: 'assets/user.png',name: 'Vishesh Dhawan',memberType: 'Core Member',domain: 'Web Development'),
    MemberLayout(img: 'assets/user.png',name: 'Anshika Bajpai',memberType: 'Core Member',domain: 'App Development'),
    MemberLayout(img: 'assets/user.png',name: 'Nirbhay Shukla',memberType: 'Core Member',domain: 'App Development'),
    MemberLayout(img: 'assets/user.png',name: 'Rishabh Singh',memberType: 'Core Member',domain: 'App Development'),
    MemberLayout(img: 'assets/user.png',name:'Shatakshi Upadhyay' ,memberType: 'Core Member',domain: 'Managerial',),
    MemberLayout(img: 'assets/user.png',name:'Ayushi Bansal' ,memberType: 'Core Member',domain: 'Managerial',),
    MemberLayout(img: 'assets/user.png',name:'Pranjal Maurya' ,memberType: 'Core Member',domain: 'Managerial',),
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFixedExtentList(
                itemExtent: 400,
                delegate: SliverChildListDelegate(
                  [
                    TweenAnimationBuilder(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        margin: EdgeInsets.fromLTRB(17, 30, 17, 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[700],
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 50, backgroundImage: AssetImage(
                                'assets/mansi_goel.jpg'),),
                            SizedBox(height: 10,),
                            Text('Mansi Goel', style: TextStyle(fontSize: 20,
                                letterSpacing: 0.9,
                                color: Colors.black),),
                            SizedBox(height: 12,),
                            Text('DSC LEAD', style: TextStyle(fontSize: 15,
                                letterSpacing: 0.3,
                                color: Colors.grey[600]),),
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
                                child: Text(
                                  'Trainee at bosch rexroth. LEAD at DSC by Google developers.Core team member at (techno-managerial society) horizon, core team member at DSC-AKGEC. Done internship of web development. Knowledge about pneumatics, hydraulics, plc.',
                                  style: TextStyle(fontSize: 13,
                                      color: Colors.grey[600],
                                      wordSpacing: 2.3),
                                  textAlign: TextAlign.center,
                                  softWrap: true,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      duration: Duration(milliseconds: 500),
                      tween: Tween<double>(begin: -1.0,end: 0.0),
                      curve: Interval(0.5,1.0,curve: Curves.fastOutSlowIn),
                      builder: (BuildContext context,double _val,Widget child){
                        return Transform(
                          transform: Matrix4.translationValues(0, _val*width, 0),
                          child: child,
                        );
                      },
                    ),
                  ],)
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 17,vertical: 5),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                delegate: SliverChildBuilderDelegate((BuildContext context,
                    int index) {
                  return members[index];
                   },
                  childCount: members.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}