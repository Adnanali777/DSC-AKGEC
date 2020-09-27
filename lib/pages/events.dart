import 'package:dsc/events/event%20details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Event_template event1 = Event_template(image: 'assets/ui-events.png',title: 'DesignTO',category: 'UI Design',date: '13 October 2020',time:'1:00 PM - 3:00 PM',place:'CS/IT Block , Second Floor',place_detail:'AKGEC - Ghaziabad',about:'On Wednesday, September 30, join DesignTO and Nicole Bernhardt for a moderated dialogue on equity, accountability and design. This panel is comprised of 4 exceptional designers whose work reflects a shared commitment to centering communities who have been traditionally marginalized or neglected.');
  Event_template event2 = Event_template(image: 'assets/ai-workshop.png',title: 'ODSC Workshop',category: 'Artificial Intelligence',date: '24 October 2020',time: '4:00 PM - 6:00 PM',place: 'Seminar Hall , Admin Block',place_detail: 'JSS Academy',about: 'Now in its fourth year, the Global Artificial Intelligence Conference is the largest agnostic vendor conference in the AI space. Whether you work in retail, healthcare, insurance, agriculture, or a completely different field, this event has the content you need. Come learn from an impressive slate of speakers from well-known brands like Google, Lyft, and Adobe, and propel your career forward in 2020.',);
  Event_template event3 = Event_template(image: 'assets/webd-event.png',title: 'WebMorph 2.0',category: 'Web Development',date: '2 November 2020',time: '12:00 PM - 2:00 PM',place: 'Banquet Hall Sun View Int',place_detail: 'Karol Bagh , Delhi',about: ' At Impact: AI 2020 youll be able to learn, explore, and create with some of the worlds most experienced practitioners, thought leaders, and vendors. Take a deep dive into cutting-edge best practices, the latest trends, and future predictions in the fields of artificial intelligence and deep learning. After 10 years of hosting conferences, AI Flow knows a thing or two about planning a stellar event, so you wont be disappointed at Impact: AI 2020!',);
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
        onPressed: (){},
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
      body: FlatButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(image: image,title: title,date: date,time: time,place: place,place_detail: place_detail,about: about,)));
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
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



