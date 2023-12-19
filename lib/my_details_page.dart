import 'package:flutter/material.dart';

class MyDetailsPage extends StatelessWidget {
  String imageName;
  String tagname;
   MyDetailsPage({super.key,required this.imageName,required this.tagname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('Details'),centerTitle: true,),
      body: Column(
        children: [
          Hero(tag: tagname,
          child: Image.asset(imageName,height: 200,width: 200,)),
          SizedBox(
            height: 20,
          ),
          // Hero(tag: 'masumTag',
          // child: Image.asset('assets/masum.jpg'))
        ],
      ),
    );
  }
}
