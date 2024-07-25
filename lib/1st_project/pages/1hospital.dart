import 'package:flutter/material.dart';
import 'package:untitled/1st_project/data/docs_list.dart';
import 'package:untitled/1st_project/model/Home_model.dart';
import 'package:untitled/1st_project/pages/1doctors.dart';
import 'package:untitled/goggle%20fonts.dart';
class hospitalProject extends StatelessWidget {
  HomeModel homeModel;
  List dos;
  hospitalProject({super.key,required this.homeModel,required this.dos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(500,200)),
                  color: secondaryColor.withOpacity(0.6)
              ),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(100,200)),
                    color: primaryColor.withOpacity(0.4)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              margin: EdgeInsets.all(30),
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_back),
                                  Text("Back",style: Styal(21,primaryColor),),
                                ],
                              )
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(30),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                            ),
                            child: Text("Hospitals",style: myStyal(30,Colors.white,FontWeight.bold),)
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 50,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: primaryColor),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search,color: primaryColor,size: 30,),
                                SizedBox(width: 20,),
                                Text("Search",style: myStyal(18,Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage("${homeModel.image}")),
                  SizedBox(height: 15,),
                  Text("${homeModel.name}",style: Styal(25,thridColor),),
                  Text("Contact details:",style: Styal(25,thridColor),),
                  Row(
                    children: [
                      Text("Address: ",style: Styal(23,Colors.black,FontWeight.bold)),
                      Text("${homeModel.location}",style: Styal(23,)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Phone: ",style: Styal(23,Colors.black,FontWeight.bold)),
                      Text("${homeModel.number}",style: Styal(23,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Views: ",style: Styal(23,Colors.black,FontWeight.bold)),
                          Text("${homeModel.views}",style: Styal(23,)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Rating: ",style: Styal(23,Colors.black,FontWeight.bold)),
                          Text("${homeModel.rating}",style: Styal(23,)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text("Information:",style: Styal(26,thridColor),),
                  Text("${homeModel.brife}",style: Styal(23,)),
                  SizedBox(height: 25,),
                  Text("Services: ",style: Styal(25,thridColor),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HomeDoctors(docs: dos,)));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.brightness_1,size: 11,),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Text("Doctors",style: Styal(20),),
                            Container(
                              height: 2,
                              width: 70,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.brightness_1,size: 11,),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text("Ambulance",style: Styal(20),),
                          Container(
                            height: 2,
                            width: 100,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
