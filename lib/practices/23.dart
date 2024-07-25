import 'package:flutter/material.dart';
import 'package:untitled/practices/contacts.dart';
class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                      ),
                    ),
                    Column(
                      children: [
                        Text("Anju Company"),
                        Text("Application Development"),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Time: 1:00 pm")
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(names),
                  ],
                )
              ],
            ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                    ),
                  ),
                  Column(
                    children: [
                      Text("Anju Company"),
                      Text("Application Development"),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Time: 1:00 pm")
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text(names),
                ],
              )
            ],
          ),
        ],
      ),
      );
  }
}
