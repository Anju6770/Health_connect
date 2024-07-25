import 'package:flutter/material.dart';

class Newspaper extends StatelessWidget {
  const Newspaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Newspaper"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Text("Heading 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Description",style: TextStyle(fontSize: 16),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
