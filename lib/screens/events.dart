import 'package:dsc/events/announcements.dart';
import 'package:dsc/events/event%20details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:ripple_effect/ripple_effect.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
   final pageKey = RipplePage.createGlobalKey();
   final effectKey = RippleEffect.createGlobalKey();
  List<Event_template> events = [
  Event_template(image: 'assets/ui-events.png',title: 'DesignTO',category: 'UI Design',date: '13 October 2020',time:'1:00 PM - 3:00 PM',place:'CS/IT Block , Second Floor',place_detail:'AKGEC - Ghaziabad',about:lipsum.createText(numParagraphs: 1,numSentences: 6) ),
  Event_template(image: 'assets/ai-workshop.png',title: 'ODSC Workshop',category: 'Artificial Intelligence',date: '24 October 2020',time: '4:00 PM - 6:00 PM',place: 'Seminar Hall , Admin Block',place_detail: 'JSS Academy',about: lipsum.createText(numParagraphs: 1,numSentences: 4),),
  Event_template(image: 'assets/webd-event.png',title: 'WebMorph 2.0',category: 'Web Development',date: '2 November 2020',time: '12:00 PM - 2:00 PM',place: 'Banquet Hall Sun View Int',place_detail: 'Karol Bagh , Delhi',about:lipsum.createText(numParagraphs: 1,numSentences: 5) ),
  ];

  @override
  Widget build(BuildContext context) {
    return RipplePage(
      pageKey: pageKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 24,bottom: 0),
          padding: EdgeInsets.all(0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 180,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('assets/Events-appbar.png',fit: BoxFit.cover,),
                  title:  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text('Events',style: TextStyle(fontFamily: 'Dancing',color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                  ),
                  centerTitle: true,
              ),
              ),
              SliverFixedExtentList(
              itemExtent: 350.0,
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context , index){
                    return events[index];
                  },childCount: events.length,
              ),
              ),
          ],
      ),
        ),
        floatingActionButton: RippleEffect(
          pageKey: pageKey,
          effectKey: effectKey,
          color: Color(0xFFced7d8),
          child: FloatingActionButton(
            onPressed: (){
              RippleEffect.start(effectKey, toNextPage);
            },
            backgroundColor: Colors.grey[600],
            child: IconButton(
            icon: Icon(Foundation.megaphone,color: Colors.white,),
          ),),
        ),
      ),
    );
  }
   toNextPage() => Navigator.of(context).push(
     FadeRouteBuilder(
       page: Announcements(),
     ),
   );
}
class Event_template extends StatefulWidget {
  @override
  String image;
  String title;
  String category;
  String date;
  String time;
  String place;
  String place_detail;
  String about;
  Event_template({this.image,this.title,this.category,this.date,this.about,this.place_detail,this.place,this.time});

  @override
  _Event_templateState createState() => _Event_templateState();
}

class _Event_templateState extends State<Event_template> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = Tween(begin: -1.0 , end: 0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticOut,
    ));
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context , Widget child){
        return Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Transform(
              transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(image: widget.image,title: widget.title,date: widget.date,time: widget.time,place: widget.place,place_detail: widget.place_detail,about: widget.about,)));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Hero(
                          tag: 'event-img-${widget.image}',
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Nanum',fontSize: 18),),
                              SizedBox(height: 20,),
                              Text(widget.category,style: TextStyle(fontSize: 17,color: Colors.grey[700],fontFamily: 'Nanum'),),
                              SizedBox(height: 8,),
                              Text(widget.date,style: TextStyle(fontSize: 12,color: Colors.grey[700],fontFamily: 'Nanum'),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}



