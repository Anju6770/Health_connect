import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      Column(
                        children: [
                          Text("Title text",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Description text",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("SAVE")),
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
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      Column(
                        children: [
                          Text("Title text",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Description text",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("SAVE")),
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
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      Column(
                        children: [
                          Text("Title text",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Description text",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("SAVE")),
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
