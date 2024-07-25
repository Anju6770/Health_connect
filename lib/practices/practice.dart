import 'package:flutter/material.dart';
class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Text("Anju",style: TextStyle(fontSize: 20,color: Colors.red),),
          Text("+97577729656"),
          Divider()
        ],
      ),
    );
  }
}
