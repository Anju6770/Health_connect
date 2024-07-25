import 'package:flutter/material.dart';
class cording extends StatelessWidget {
  const cording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CODING BAR"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("INFORMATION",style: TextStyle(fontSize: 20),),
                ]
              ),
              Column(
                children: [
                  Icon(Icons.close,color: Colors.black,size: 30,),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  children: [
                    Text("HOW TO CODE",style: TextStyle(fontSize: 18),),
                  ]
              ),
              Column(
                children: [
                  Icon(Icons.keyboard_arrow_up_sharp,color: Colors.black,size: 20,),
                ],
              )
            ],
          ),
          Text("I love cording,you will like it as well "
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"
              "I love cording,you will like it as well"),
          Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  children: [
                    Text("CODING TYPE",style: TextStyle(fontSize: 18),),
                  ]
              ),
              Column(
                children: [
                  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 20,),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  children: [
                    Text("SETTING",style: TextStyle(fontSize: 18),)
                  ]
              ),
              Column(
                children: [
                  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 20,),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
