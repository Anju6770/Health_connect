import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class CapitalHome extends StatelessWidget {
  // Pharmacy pharmacy;
  List medicines;
  CapitalHome({super.key,required this.medicines});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:  RichText(
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
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Medicine Store",style: myStyal(29,secondaryColor,FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 4,
                childAspectRatio: 0.7,
              ),
                itemCount: 12,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                return Card(
                  elevation: 10,
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          maxRadius: 55,
                          backgroundImage: AssetImage("${medicines[index].image}"),
                        ),
                        Text("${medicines[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),textAlign: TextAlign.center,),
                        Text("\$ ${medicines[index].price}",style: myStyal(16,Colors.black),),
                        Center(child: Text("${medicines[index].rating}")),
                      ],
                    ),
                  ),
                );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
