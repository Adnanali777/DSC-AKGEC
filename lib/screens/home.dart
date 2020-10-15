import 'package:flutter/material.dart';
import 'file:///D:/apps/dsc/lib/shared/post-card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin , AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  blog_card_template blog1 = blog_card_template(userimg: 'assets/blog-1-owner.png',image: 'assets/blog-1.png',text1: '3 Conversion Rate Optimization Tools Every Marketer Should Try',text2:'Shubham Sinha  |  23 September 2020',text3:'Hey guys, this is John. I’m an Internet marketing consultant with WebFX, and today we’re going to talk about the top three conversion rate optimization tools that I like to use, and some quick ways that you can apply them today. And we’re going to take a look at what the tool is, some things you can do with it, what I like about it, and something to try today for each tool. So let’s get started. v       ' ,);
  blog_card_template blog2 =  blog_card_template(userimg: 'assets/blog-2-owner.jpg',image:'assets/blog-2.png', text1:'7 Steps to Benchmark Your Product’s UX',text2: 'Manish Dixit  |  19 September  2020',text3:'The Mondrian style—colorful mosaic-like grids based on the designs of Dutch painter Piet Mondrian—is what initially grabs my attention on this website. Straight away, I can tell that this blog is going to be art and design focused. The designer uses a progressive rhythm to create a content hierarchy, adding a refreshing twist to the content card structure most commonly used by online publications. The interface is bright and makes good use of bold colors and patterns—a combination that can go catastrophically wrong if overdone.');
  blog_card_template blog3 = blog_card_template(userimg: 'assets/blog-3-owner.png',image:'assets/blog-3.png', text1:'Unsupervised Meta-Learning: Learning to Learn without Supervision', text2:'Rohan Asthana  |  8 September 2020',text3:'The history of machine learning has largely been a story of increasing abstraction. In the dawn of ML, researchers spent considerable effort engineering features. As deep learning gained popularity, researchers then shifted towards tuning the update rules and learning rates for their optimizers.');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 15, 15),
                margin: EdgeInsets.only(top: 20,right: 50),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children:<TextSpan> [
                      TextSpan
                        (text: 'Welcome ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24 , fontFamily: 'SpecialElite',letterSpacing: 1.2)
                      ),
                      TextSpan(text: 'To DSC AKGEC',style: TextStyle(fontSize: 24 , fontFamily: 'SpecialElite',letterSpacing: 1.2) ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height*0.4,
                  child: Image.asset('assets/club.png'),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.access_time,size: 24,),
                  SizedBox(width: 8,),
                  Text('Latest Posts',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,letterSpacing: 0.7),),
                ],
              ),
              Column(
                children: [
                  blog1,
                  blog2,
                  blog3,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



