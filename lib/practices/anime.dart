import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/goggle%20fonts.dart';
class Anime extends StatelessWidget {
  const Anime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/animation/anime.json'),
         InkWell(
           onTap: (){
             Navigator.pop(context);
           },
           child: Container(
             margin: EdgeInsets.all(150),
             height: 50,
             width: 90,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.black,
             ),
             child: Center(child: Text("Previous",style: myStyal(20,Colors.white,FontWeight.bold),)),
           ),
         )
        ],
      ),
    );
  }
}
