import 'package:dsc/shared/team-details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

Icon twitter =Icon(AntDesign.twitter,size: 20,color: Colors.blue,);
Icon linkedIn = Icon(AntDesign.linkedin_square,size: 20,color: Colors.blue,);
Icon github = Icon(AntDesign.github,size: 20,color: Colors.grey[800],);

class dscTeam extends StatefulWidget {
  @override
  _dscTeamState createState() => _dscTeamState();
}

class _dscTeamState extends State<dscTeam> with SingleTickerProviderStateMixin{
  Animation animationlead;
  Animation animationteam;
  AnimationController animationControllerlead;
  @override
  void initState() {
    super.initState();
    animationControllerlead = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    animationlead = Tween(begin: -1.0 , end: 0).animate(CurvedAnimation(
      parent: animationControllerlead,
      curve: Interval(0.5,1.0,curve:Curves.fastOutSlowIn),
    ));
    animationteam = Tween<double>(begin: 1,end: 0).animate(CurvedAnimation(
      parent: animationControllerlead,
      curve: Interval(0.7,1.0,curve: Curves.fastOutSlowIn),
    ));
    animationControllerlead.forward();
  }
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
  void dispose() {
    super.dispose();
    animationControllerlead.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.2,0.5,0.9,1],
            colors: [Colors.blue,Colors.white,Colors.white,Colors.white],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFixedExtentList(
                  itemExtent: 400,
                  delegate: SliverChildListDelegate(
                    [
                      AnimatedBuilder(
                        animation: animationControllerlead,
                        builder: (BuildContext context,Widget child){
                          return Transform(
                            transform: Matrix4.translationValues(0, animationlead.value*width, 0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                              margin: EdgeInsets.fromLTRB(17, 30, 17, 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1.0,color: Colors.grey[400],style: BorderStyle.solid),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 5.0,
                                    offset: Offset(5,7),
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
                                      SizedBox(width: 39,),
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
                                      SizedBox(width: 39,),
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
      ),
    );
  }
}