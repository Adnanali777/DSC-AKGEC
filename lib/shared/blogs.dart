import 'package:dsc/shared/heart.dart';
import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  String image;
  String text1;
  String text2;
  String text3;
  Details({this.image,this.text1,this.text2,this.text3});

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
                trailing: Heart(),
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


