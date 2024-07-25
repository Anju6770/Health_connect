import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class myprofile extends StatelessWidget {
  const myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(alignment: Alignment.center,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                  color: Colors.deepOrangeAccent,
                  image:DecorationImage(image: AssetImage("assets/image/img_1.png")),
                ),
              ),
              SizedBox(height: 10,),
              Text("Anjali Ghalley",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Application Developer",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width*50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Project',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            Text('Programming Languages'),
                            Text('Stage Management,'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Project',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            Text('Object Oreanted Program'),
                            Text('Operating Systems,'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2,color: Colors.black,),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*0.42,

                    decoration: BoxDecoration(border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Education',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 5,),
                        Text('Flutter-2024',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Basic Coding(2022-2023)',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('MHS-2023',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Interest',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 5,),
                        Text('Basketball',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Badminton',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Cricket',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height*0.19,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('Email: anjalighalleyrai@gmail.com'),
                    Text('Github: https://github.com/Anju6770/Anju67'),
                    Text('Linkedin: https://www.linkedin.com/in/anjali-ghalley-09346a313/'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
