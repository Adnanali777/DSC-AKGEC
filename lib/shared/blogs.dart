import 'package:dsc/shared/heart.dart';
import 'package:dsc/shared/post-card.dart';
import 'package:flutter/material.dart';
import 'package:dsc/screens/home.dart';
class Details extends StatefulWidget {
  String image;
  String userimg;
  String text1;
  String text2;
  String text3;
  Details({this.image,this.text1,this.text2,this.text3,this.userimg});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: 'location-img-${widget.image}',
                    child: Image.asset(
                      widget.image,
                      height: 360,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(
                      widget.text1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset(widget.userimg,height: 30,width: 30,fit: BoxFit.cover,),
                    SizedBox(width: 25,),
                    Text(widget.text2,style: TextStyle(fontSize: 13,color: Colors.grey[800]),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.10,),
                    Heart(),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                     widget.text3,
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}


