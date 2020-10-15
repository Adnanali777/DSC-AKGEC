import 'package:flutter/material.dart';
import 'file:///D:/apps/dsc/lib/shared/blogs.dart';
import 'package:dsc/screens/home.dart';
class blog_card_template extends StatefulWidget {
  String image;
  String userimg;
  String text1;
  String text2;
  String text3;
  blog_card_template({this.image,this.text1,this.text2,this.text3,this.userimg});

  @override
  _blog_card_templateState createState() => _blog_card_templateState();
}

class _blog_card_templateState extends State<blog_card_template> with SingleTickerProviderStateMixin {
  @override

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Card(
          elevation: 5,
          child: Row(
            children: [
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details(image:widget.image,text1:widget.text1,text2:widget.text2,text3: widget.text3,userimg: widget.userimg,)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Hero(
                    tag: 'location-img-${widget.image}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(widget.image,width: MediaQuery.of(context).size.width * 0.45,),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 5),
                  width: double.infinity,
                  margin:EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(widget.text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing: 0.9), ),
                      SizedBox(height: 20,),
                      Text(widget.text2,style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

