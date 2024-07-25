import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/goggle%20fonts.dart';
class AmbulanceHome extends StatelessWidget {
  const AmbulanceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyal(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyal(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyal(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
          centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/ambulance.json"),
            SizedBox(height: 15,),
            Text("Ambulance is always available",style: myStyal(25,Colors.black,FontWeight.bold),),
            SizedBox(height: 15,),
            Row(
              children: [
                Icon(Icons.call,size: 20,color: secondaryColor,),
                SizedBox(width: 15,),
                Text("911",style: myStyal(20),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Icon(Icons.person,size: 20,color: primaryColor,),
                SizedBox(width: 15,),
                Text("Doctor:1, Nurse:2",style: myStyal(20),),
              ],
            ),
            SizedBox(height: 90,),
            Container(
              margin: EdgeInsets.all(10),
              height:MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.6,
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(20),
                color: primaryColor
              ),
              child: Center(child: Text("Book Now",style: myStyal(22,Colors.white,FontWeight.bold),)),
            )
          ],
        ),
      ),

    );
  }
}
