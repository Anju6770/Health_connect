import 'package:flutter/material.dart';
import 'package:untitled/practices/contacts.dart';
class Sir extends StatelessWidget {
  const Sir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Practice"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Blog",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.cyan,
                    ),
                    child: Center(child: Text("Nature",style: TextStyle(fontSize: 16,color:Colors.white),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(child: Text("Animal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(child: Text("Fish",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(child: Text("Space",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Center(child: Text("Logo",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 70,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              Column(
                                children: [
                                  Text("Md.Mehedi Hasan"),
                                  Text("Photographer"),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.fullscreen),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(names),
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
                                height: 60,
                                width: 70,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              Column(
                                children: [
                                  Text("Md.Mehedi Hasan"),
                                  Text("Photographer"),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.fullscreen),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(names),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.cyan[700],
                    ),
                    child: Center(child: Text("Subscribe",style: TextStyle(fontSize: 20,color: Colors.white),)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
