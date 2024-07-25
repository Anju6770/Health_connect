import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button",style: myStyal(20,Colors.white,FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width*0.8,
              height: 50,
                color: Colors.blueAccent,
                onPressed: (){},
              child: Text("Button 1",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width*0.8,
              height: 50,
                color: Colors.blueAccent,
                onPressed: (){},
              child: Text("Button 2",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width*0.8,
              height: 50,
              color: Colors.blueAccent,
                onPressed: (){},
              child: Text("Button 3",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width*0.8,
              height: 50,
                color: Colors.blueAccent,
                onPressed: (){},
              child: Text("Button 4",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minWidth: MediaQuery.of(context).size.width*0.8,
                height: 50,
                color: Colors.blueAccent,
                onPressed: (){},
              child: Text("Button 5",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}

