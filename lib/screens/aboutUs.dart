import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dsc/screens/OurTeam.dart';
final _controller = PageController(
  initialPage: 0,
);

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
         About(),
        dscTeam(),
      ],
    );
  }
}

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:[
              Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.37,
              decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/aboutus-2.png'),fit: BoxFit.contain),
              ),
            ),
              Positioned(
                right: 5,
                top: 33,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Our Team'),
                    SizedBox(width: 2,),
                    GestureDetector(
                      onTap: (){
                        _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                      },
                      child:  Icon(AntDesign.right,size: 22,),
                      ),
                  ],
                ),
              ),
           ]
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 100),
            fadingDuration: Duration(milliseconds: 100),
            child: Container(
              margin: EdgeInsets.only(left: 25),
              child: Text('About Us',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,letterSpacing: 1.1,color: Colors.grey[800]),),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  fadingDuration: Duration(milliseconds: 300),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 0),
                    child: Text('Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are all welcome',style: TextStyle(fontSize: 15,letterSpacing: 0.9,color: Colors.grey[800],),textAlign: TextAlign.start,),
                  ),
                ),
                SizedBox(height: 18,),
                DelayedDisplay(
                  delay: Duration(milliseconds: 300),
                  fadingDuration: Duration(milliseconds: 300),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Developer Student Club AKGEC is inspired by Google Developers Family. We try to engage student developers through our hack events, codelabs and meetups. The motive is to create a local ecosystem of programmers & hackers in and around the campus.',style: TextStyle(fontSize: 15,letterSpacing: 0.9,color: Colors.grey[800],),textAlign: TextAlign.start,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

