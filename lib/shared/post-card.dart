import 'package:flutter/material.dart';
import 'file:///D:/apps/dsc/lib/shared/blogs.dart';
import 'package:dsc/screens/home.dart';
class blog_card_template extends StatelessWidget {
  String image;
  String userimg;
  String text1;
  String text2;
  String text3;
  blog_card_template({this.image,this.text1,this.text2,this.text3,this.userimg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
          child: Row(
            children: [
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details(image:image,text1:text1,text2:text2,text3: text3,userimg: userimg,)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Hero(
                    tag: 'location-img-$image',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(image,width: MediaQuery.of(context).size.width * 0.45,),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin:EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing: 0.9), ),
                      SizedBox(height: 20,),
                      Text(text2,style: TextStyle(fontSize: 12),),
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