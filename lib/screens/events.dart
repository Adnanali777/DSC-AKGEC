import 'package:dsc/events/announcements.dart';
import 'package:dsc/events/event%20details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Event_template event1 = Event_template(image: 'assets/ui-events.png',title: 'DesignTO',category: 'UI Design',date: '13 October 2020',time:'1:00 PM - 3:00 PM',place:'CS/IT Block , Second Floor',place_detail:'AKGEC - Ghaziabad',about:lipsum.createText(numParagraphs: 1,numSentences: 6));
  Event_template event2 = Event_template(image: 'assets/ai-workshop.png',title: 'ODSC Workshop',category: 'Artificial Intelligence',date: '24 October 2020',time: '4:00 PM - 6:00 PM',place: 'Seminar Hall , Admin Block',place_detail: 'JSS Academy',about: lipsum.createText(numParagraphs: 1,numSentences: 7),);
  Event_template event3 = Event_template(image: 'assets/webd-event.png',title: 'WebMorph 2.0',category: 'Web Development',date: '2 November 2020',time: '12:00 PM - 2:00 PM',place: 'Banquet Hall Sun View Int',place_detail: 'Karol Bagh , Delhi',about:lipsum.createText(numParagraphs: 1,numSentences: 5) );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40),
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
            delegate: SliverChildListDelegate(
              [
                event1,
                event2,
                event3,
              ],
            ),
            ),
        ],
    ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Announcements()));
        },
        backgroundColor: Colors.grey[600],
        child: IconButton(
        icon: Icon(Foundation.megaphone,color: Colors.white,),
      ),),
    );
  }
}
class Event_template extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FlatButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(image: image,title: title,date: date,time: time,place: place,place_detail: place_detail,about: about,)));
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
                  tag: 'event-img-$image',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
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
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Nanum',fontSize: 18),),
                      SizedBox(height: 20,),
                      Text(category,style: TextStyle(fontSize: 17,color: Colors.grey[700],fontFamily: 'Nanum'),),
                      SizedBox(height: 8,),
                      Text(date,style: TextStyle(fontSize: 12,color: Colors.grey[700],fontFamily: 'Nanum'),),

                    ],
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



