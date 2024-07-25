import 'package:flutter/material.dart';
import 'package:untitled/1st_project/data/docs_list.dart';
import 'package:untitled/Model/doctors.dart';
import 'package:untitled/goggle%20fonts.dart';
class DoctorsDetails extends StatelessWidget {
  Doctors doctors;
  DoctorsDetails({super.key,required this.doctors});

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
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        //physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                tag: "${doctors.image}",
                  child: Image(image: AssetImage("${doctors.image}"))),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: secondaryColor),
                              shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.video_call,size: 40,color: primaryColor,),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: secondaryColor),
                              shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.call,size: 40,color: primaryColor,),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: secondaryColor),
                              shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.message,size: 40,color: primaryColor,),
                        ),
                      ],
                    ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${doctors.name}",style: myStyal(25,Colors.black,FontWeight.bold),),
                              Text("${doctors.speciality}",style: myStyal(20,Colors.black),),
                            ],
                          ),
                          Text("\$ ${doctors.payment}",style: myStyal(18,secondaryColor,FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text("About Doctor",style: myStyal(24,primaryColor,FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("${doctors.aboutDoc}",style: myStyal(20,Colors.black),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,size: 22,color: primaryColor,),
                                      Text("${doctors.patientNo}",style: myStyal(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Experince"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag,size: 22,color: primaryColor,),
                                      Text("${doctors.experience}",style: myStyal(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rating"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${doctors.rating}",style: myStyal(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text("Available Time",style: myStyal(20,primaryColor,FontWeight.bold),),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          //physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: doctors.appointmentDays.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    margin: EdgeInsets.all(15),
                                    elevation: 4,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.29,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("${doctors.appointmentDays[index]}",style: myStyal(16,primaryColor,FontWeight.bold),),
                                            Text("${doctors.appointmentTimes[index]}",style: myStyal(14,primaryColor,FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height*0.05,
                          minWidth: MediaQuery.of(context).size.width*0.8,
                            onPressed: (){},
                          child: Text("Make an Appointment",style: myStyal(22,Colors.white,FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
