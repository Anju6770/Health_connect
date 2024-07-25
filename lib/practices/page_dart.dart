import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("student Info"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name: Akash Gajmer",style: TextStyle(fontSize: 20,color: Colors.red),),

          Text ("Phone: 124678756", style: TextStyle(fontSize: 16, color: Colors.pink),),
          Text ("Email: snbgh@gmail.com", style: TextStyle(fontSize: 16,color: Colors.pink),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Name", style: TextStyle(color: Colors.green),),
              Text("Phone", style: TextStyle(color: Colors.blue),),
              Text("Email",style: TextStyle(color: Colors.amber),)
            ],
          )
        ],
      ),
    );
  }
}






