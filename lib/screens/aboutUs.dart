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

class _AboutState extends State<About> {
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
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text('About Us',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,letterSpacing: 1.1,color: Colors.grey[800]),),
          ),
          Expanded(
            child:Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 18),
              child: Text('Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome.',style: TextStyle(fontSize: 15,letterSpacing: 0.9,color: Colors.grey[800],),textAlign: TextAlign.justify,),
            ),
          ),
        ],
      ),
    );
  }
}

