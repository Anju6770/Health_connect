import 'package:flutter/material.dart';
import 'package:untitled/Model/Hospital.dart';
import 'package:untitled/goggle%20fonts.dart';
class HospitalDetails extends StatelessWidget {
  Hospital hospital;
  HospitalDetails({super.key,required this.hospital});

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
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${hospital.name}",style: myStyal(30,primaryColor,FontWeight.bold),),
                SizedBox(height: 10,),
                Card(
                  elevation: 8,
                    child: Image(image: AssetImage("${hospital.image}"),fit: BoxFit.cover,)),
                SizedBox(height: 15,),
                Text("${hospital.brife}",style: myStyal(20),),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${hospital.rating}",style: myStyal(20),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Doctors: ${hospital.doctors}",style: myStyal(20),),
                        Text("Patient: ${hospital.patient}",style: myStyal(20),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.call,color: secondaryColor,),
                            SizedBox(width: 10,),
                            Text("${hospital.number}",style: myStyal(20),),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_pin,color: primaryColor,),
                            SizedBox(width: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                                child: Text("${hospital.location}",style: myStyal(20),)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.6,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: primaryColor,
                            ),
                            child: Center(child: Text("Book Doctors",style: myStyal(25,Colors.white,FontWeight.bold),)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
