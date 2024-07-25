import 'package:flutter/material.dart';
import 'package:untitled/Model/whatsapp.dart';
import 'package:untitled/goggle%20fonts.dart';
class Inside extends StatelessWidget {
  Whatsapp whatsapp;
  Inside({super.key,required this.whatsapp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("${whatsapp.image}"),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text("${whatsapp.title}",style: myStyal(20),maxLines: 1,)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.video_call),
                  SizedBox(width: 10,),
                  Icon(Icons.call),
                  Icon(Icons.more_vert_outlined),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xffb8b8ff),
    );
  }
}
