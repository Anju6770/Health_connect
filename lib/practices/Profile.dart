import 'package:flutter/material.dart';
class my extends StatelessWidget {
  const my({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL1_niSKXlt6I0BPbUwFwcAtRpKIqGcIekXA&s"),),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("Anjali Ghalley",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),),
                  Text("App developer",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                          SizedBox(height: 15,),
                          Text("Weather Application",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          Text("API,Responsive UI",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          SizedBox(height: 20,),
                          Text("Learnio(2024-2024)",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          Text("Remontly working",style: TextStyle(fontSize:16 ,color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                          SizedBox(height: 15,),
                          Text("Weather Application",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          Text("API,Responsive UI",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          SizedBox(height: 20,),
                          Text("Learnio(2024-2024)",style: TextStyle(fontSize:16 ,color: Colors.black),),
                          Text("Remontly working",style: TextStyle(fontSize:16 ,color: Colors.black),),
                        ],
                      ),
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
