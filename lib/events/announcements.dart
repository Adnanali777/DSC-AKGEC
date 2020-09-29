import 'package:flutter/material.dart';

class Announcements extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 190,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(margin: EdgeInsets.only(top: 30),child: Image.asset('assets/news.png',fit: BoxFit.cover,)),
              title: Container(
                child: Text(
                  'Announcements',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'PoiretOne',color: Colors.black),
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 250,
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1.5,color: Colors.grey[350],style: BorderStyle.solid),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DomainX',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Nanum'),),
                      SizedBox(height: 20,),
                      Text('Team DSC AKGEC extends its heartiest congratulations to the winners !',style: TextStyle(fontSize: 15,fontFamily: 'Nanum'),),
                      SizedBox(height: 25,),
                      Table(
                        columnWidths: {
                          0:FractionColumnWidth(0.5),
                          1:FractionColumnWidth(0.2),
                          2:FractionColumnWidth(0.5),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Text('Name',style: TextStyle(fontSize: 17,fontFamily: 'Nanum',color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Text('Branch',style: TextStyle(fontSize: 17,fontFamily: 'Nanum',color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Text('Student No',style: TextStyle(fontSize: 17,fontFamily: 'Nanum',color: Colors.black),),
                            ),
                          ]),
                          TableRow(children:[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.5),
                              child: Text('Adnan Ali',style: TextStyle(fontSize: 16,fontFamily: 'Nanum',color: Colors.grey[600]),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.5),
                              child: Text('IT',style: TextStyle(fontSize: 16,fontFamily: 'Nanum',color: Colors.grey[600]),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.5),
                              child: Text('1913113',style: TextStyle(fontSize: 16,fontFamily: 'Nanum',color: Colors.grey[600]),),
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}

Widget Table_details(){

}
