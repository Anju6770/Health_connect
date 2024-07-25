import 'package:flutter/material.dart';
class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
