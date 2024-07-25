import 'package:flutter/material.dart';
class watsApp extends StatelessWidget {
  const watsApp({super.key});
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text("WhatsApp", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold ),),
      centerTitle: false,
      backgroundColor: Colors.white,
      actions: [
      Icon(Icons.camera_alt_rounded),
        Icon(Icons.search_rounded),
      Icon(Icons.more_vert_rounded),
      ],
    ),
      body: Container(
      padding:EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            children: [
              Container(
              margin: EdgeInsets.all(10),
                height: 50,
              width: 50,
                decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange[700],
                ),
            ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
            ],
              ),
            ],
            ),
            Text("12:00 PM", style: TextStyle(color: Colors.green),                ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[700],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
              ],
              ),
            ],
            ),
            Text("12:00 PM", style: TextStyle(color: Colors.green),                ),
          ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange[700],
              ),
            ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
            ],
              ),
          ],
          ),
          Text("12:00 PM", style: TextStyle(color: Colors.green),
          ),
        ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            children: [
              Container(
              margin: EdgeInsets.all(10),
              height: 50,
                width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange[700],
              ),
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
              ],
              ),
            ],
            ),
            Text("12:00 PM", style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            children: [
              Container(
              margin: EdgeInsets.all(10),
                height: 50,
              width: 50,
                decoration: BoxDecoration(
              shape: BoxShape.circle,
                  color: Colors.orange[700],
            ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
                ],
              ),
            ],
          ),
            Text("12:00 PM", style: TextStyle(color: Colors.green),
          ),
          ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange[700],
              ),
            ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
            ],
              ),
          ],
          ),
          Text("12:00 PM", style: TextStyle(color: Colors.green),
          ),
        ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
            children: [
              Container(
              margin: EdgeInsets.all(5),
                height: 50,
              width: 50,
                decoration: BoxDecoration(
              shape: BoxShape.circle,
                  color: Colors.orange[700],
            ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title Text" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
                ],
              ),
            ],
            ),
            Text("12:00 PM", style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ],
      ),
    ),
    );
  }
}