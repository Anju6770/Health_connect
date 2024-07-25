import 'package:flutter/material.dart';
import 'package:untitled/practices/contacts.dart';
class Daily extends StatelessWidget {
  const Daily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Daily Snack",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
        actions: [
          Icon(Icons.circle,size: 30,),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(7),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            Text("Top 10 Holiday",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Destination",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
            Text(names),
            Text("5 min read",style: TextStyle(color: Colors.brown),),
            Divider(
              thickness: 3,color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Center(child: Text("FOR YOU",style: TextStyle(color: Colors.white),)),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Center(child: Text("TRENDING",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Center(child: Text("TECH",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Center(child: Text("ECONOMY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Do 'less is more'still relevant?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("4 min read",style: TextStyle(color: Colors.brown),),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Green cactus and how to find them",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("2 min read",style: TextStyle(color: Colors.brown),),
                  ],
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
