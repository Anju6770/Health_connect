import 'package:flutter/material.dart';
import 'package:untitled/practices/contacts.dart';
class Traveler extends StatelessWidget {
  const Traveler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traveler",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.pink,
        actions: [
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.logout,color: Colors.white,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tiger Nest",style: TextStyle(fontSize: 25,color: Colors.cyan,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Md.Mehedi Hasan",style: TextStyle(color: Colors.grey),),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("(5)")
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.timer,color: Colors.red,),
                  Text("12:00 PM"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month,color: Colors.red,),
                  Text("June 25,2024"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
              ),
              Text(names),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
            ),
            child:Center(child: Text("Countact Us",style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.purple,
            ),
            child: Center(child: Text("Purchase Plan",style: TextStyle(fontSize: 20,color: Colors.white),)),
          )
        ],
      ),
    );
  }
}
