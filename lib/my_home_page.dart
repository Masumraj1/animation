import 'package:animation/my_details_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation'),centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyDetailsPage(tagname: 'sadiTag',imageName: 'assets/sadia.jpg',)));
              },
                child: Hero(tag: 'sadiTag',
                child: Image.asset('assets/sadia.jpg',height: 200,width: 200,))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDetailsPage(tagname: 'masumTag',imageName: 'assets/masum.jpg',)));
              },
                child: Hero(tag: 'masumTag',
                child: Image.asset('assets/masum.jpg'))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDetailsPage(tagname: 'babulTag',imageName: 'assets/babul.jpg',)));
                },
                child: Hero(tag: 'babulTag',
                    child: Image.asset('assets/babul.jpg',height: 200,width: 200,))),
          ],
        ),
      ),
    );
  }
}
