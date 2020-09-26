import 'package:dsc/project-pages/web-d.dart';
import 'package:flutter/material.dart';
class categories_cards extends StatelessWidget {
  String image;
  String text;
  Widget route;
  categories_cards({this.image,this.text,this.route});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9.5),
      width:MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
              flex:4,
              child: RawMaterialButton(
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => route));
                  },
                  child: Image.asset(image,fit: BoxFit.fill,
                  )
              ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 10),
              child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
