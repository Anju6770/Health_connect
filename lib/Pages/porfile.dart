import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class Porfile extends StatelessWidget {
  const Porfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyal(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyal(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyal(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: CircleBorder(),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/pea.jpg"),fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
        
            Container(
              margin: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Harry Monsun",style: myStyal(20,Colors.black,FontWeight.bold),),
                    Text("Age: 45",style: myStyal(20,Colors.black,FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Number: 17864509",style: myStyal(20,Colors.black,FontWeight.bold),),
                    SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on,color: primaryColor,),
                    SizedBox(width: 10,),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text("Changzamtog,Thimphu,Bhutan",style: myStyal(20,Colors.black,FontWeight.bold),maxLines: 3,)),
                  ],
                ),
                    SizedBox(height: 10,),
                    Text("Sickness: Suffering from Tonsil",style: myStyal(20,Colors.black,FontWeight.bold),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
