import 'package:flutter/material.dart';
class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("MD.Mehedi Hasan",style: TextStyle(fontSize: 20),),
                  Text("+97512122345",style: TextStyle(fontSize: 16),),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sim_card,color: Colors.blue, size: 35,),
                  Text("11:00 AM",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
