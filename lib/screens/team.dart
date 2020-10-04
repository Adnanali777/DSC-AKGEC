import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
        ],
      ),
    );
  }
}

class dscTeam extends StatefulWidget {
  @override
  _dscTeamState createState() => _dscTeamState();
}

class _dscTeamState extends State<dscTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Our Team'),
      ),
    );
  }
}
