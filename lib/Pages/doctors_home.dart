import 'package:flutter/material.dart';
import 'package:untitled/Data/doctors_list.dart';
import 'package:untitled/Pages/ambulance_home.dart';
import 'package:untitled/Pages/covid-19.dart';
import 'package:untitled/Pages/doctors_details.dart';
import 'package:untitled/Pages/hospital_home.dart';
import 'package:untitled/Pages/medicine_home.dart';
import 'package:untitled/Pages/porfile.dart';
import 'package:untitled/goggle%20fonts.dart';
class DoctorsHome extends StatefulWidget {
  DoctorsHome({super.key});

  @override
  State<DoctorsHome> createState() => _DoctorsHomeState();
}

class _DoctorsHomeState extends State<DoctorsHome> {
  bool isClicked = false;
  bool Clicked=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                /// app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size: 30,),
                    RichText(
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
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Porfile()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor),
                          image: DecorationImage(image: AssetImage("assets/images/pea.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.28,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                            image: DecorationImage(image: AssetImage("assets/images/doctors.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stay Healthy!",style: myStyal(30,Colors.black,FontWeight.bold),),
                            Text("Stay Safe!",style: myStyal(28,Colors.black,FontWeight.bold),maxLines: 1,),
                            Text("We are here to help you 24/7 with the best treatment in the world",style: myStyal(20,Colors.black),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.video_call,size: 30,color: primaryColor,),
                                    SizedBox(width: 10,),
                                    Icon(Icons.call,color: secondaryColor),
                                    SizedBox(width: 10,),
                                    Icon(Icons.message_outlined,color: primaryColor,),
                                  ],
                                ),
                                Text("Meet Online",style: myStyal(22,secondaryColor,FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services",style: myStyal(25,primaryColor,FontWeight.bold),),
                    InkWell(
                        onTap: (){
                          if(isClicked == false){
                            setState(() {
                              isClicked = true;
                            });
                          }
                          else{
                            setState(() {
                              isClicked = false;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Text("See All",style: myStyal(18,Colors.black),),
                          isClicked ?SizedBox(width: 2,):Icon(Icons.arrow_drop_down_outlined),
                          ],
                        )),
                  ],
                ),
                isClicked ? Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CovidHome()));
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/virus.gif"),
                              Text("Covid-19",style: myStyal(16,Colors.black),),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AmbulanceHome()));
                          },
                          child: Column(
                              children: [
                                Image.asset("assets/icons/ambulance.gif"),
                                Text("Ambulance",style: myStyal(16,Colors.black),),
                              ],
                            ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalHome()));
                          },
                          child: Column(
                          children: [
                            Image.asset("assets/icons/hospital.gif"),
                            Text("Hospital",style: myStyal(16,Colors.black),),
                          ],
                                              ),
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineHome()));
                            },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/medicine.gif"),
                              Text("Medicine",style: myStyal(16,Colors.black),),
                            ],
                          ),
                        ),
                      ],
                    ) ,
                    SizedBox(height: 30,),
                  ],
                ):SizedBox(width: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Rated Doctors",style: myStyal(25,primaryColor,FontWeight.bold),),
                    InkWell(
                        onTap: (){
                          if(Clicked == false){
                            setState(() {
                              Clicked = true;
                            });
                          }
                          else{
                            setState(() {
                              Clicked = false;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Text("See All",style: myStyal(18,Colors.black),),
                            Clicked ?SizedBox(width: 2,):Icon(Icons.arrow_drop_down_outlined),
                          ],
                        )),
                  ],
                ),
                Clicked ? GridView.builder(
                  shrinkWrap: true,
                    itemCount: Class.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.7,
                    ),
                  itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DoctorsDetails(doctors: Class[index],)));
                        },
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primaryColor.withOpacity(0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Hero(
                                    tag:"${Class[index].image}",
                                    child: CircleAvatar(
                                      maxRadius: 50,
                                      backgroundColor: Colors.blue.withOpacity(0.1),
                                      backgroundImage: AssetImage("${Class[index].image}"),
                                    ),
                                  ),
                                  Text("${Class[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),textAlign: TextAlign.center,),
                                  Text("${Class[index].speciality}",style: myStyal(16,Colors.black),),
                                  Container(
                                    height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white
                                      ),
                                      child: Center(child: Text("${Class[index].rating}"))),
                                ],
                              ),
                          ),
                        ),
                      );
                  },
                ):SizedBox(width: 2,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
