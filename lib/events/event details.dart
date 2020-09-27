import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class EventDetails extends StatefulWidget {
  String image;
  String title;
  String date;
  String time;
  String place;
  String place_detail;
  String about;
  EventDetails({this.image,this.title,this.date,this.time,this.place,this.place_detail,this.about});
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 27),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 220,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(tag: 'event-img-${widget.image}',child: Image.asset(widget.image,fit: BoxFit.cover,)),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.height*0.8,
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55)),
                      color: Colors.white,
                      border: Border.all(width: 1.5,color: Colors.grey[350],style: BorderStyle.solid),


                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20,),
                        Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,letterSpacing: 1.3,color: Colors.black),textAlign: TextAlign.center,),
                        SizedBox(height: 55,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 40),
                              child: Icon(FontAwesome.calendar,size: 21,color: Colors.grey[600],),
                            ),
                            SizedBox(width: 45,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  fit:FlexFit.loose,
                                  child: Text(widget.date,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 10,),
                                Flexible(fit: FlexFit.loose,child: Text(widget.time,style: TextStyle(fontSize: 12,color: Colors.grey[500]),)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 40),
                              child: Icon(Icons.place,size: 22.5,color: Colors.grey[600],),
                            ),
                            SizedBox(width: 45,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  fit:FlexFit.loose,
                                  child: Text(widget.place,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 10,),
                                Flexible(fit: FlexFit.loose,child: Text(widget.place_detail,style: TextStyle(fontSize: 12,color: Colors.grey[500]),textAlign: TextAlign.start,)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 40),
                              child: Icon(Icons.info,size: 21,color: Colors.grey[600],),
                            ),
                            SizedBox(width: 45,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    fit:FlexFit.loose,
                                    child: Text('About',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: 10,),
                                  Flexible(fit: FlexFit.loose,child: Text(widget.about,style: TextStyle(height: 1.5,fontSize: 12,color: Colors.grey[500]),textAlign: TextAlign.start,)),
                                ],
                              ),
                            ),
                            SizedBox(width: 8,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlueAccent,
        label: Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
      ),
    );
  }
}
