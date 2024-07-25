import 'package:flutter/material.dart';
import 'package:untitled/Data/hospital_list.dart';
import 'package:untitled/Pages/hospital_details.dart';
import 'package:untitled/goggle%20fonts.dart';
class HospitalHome extends StatelessWidget {
  HospitalHome({super.key});

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
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: Alass.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalDetails(hospital: Alass[index],)));
                  },
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor.withOpacity(0.4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width*0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage("${Alass[index].image}"),fit: BoxFit.cover)
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${Alass[index].name}",style: myStyal(19,Colors.black,FontWeight.bold),maxLines: 3,),
                                      SizedBox(height: 20,),
                                      Text("${Alass[index].location}",style: myStyal(16,Colors.black),),
                                      SizedBox(height: 10,),
                                      Text("${Alass[index].rating}",style: myStyal(16),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                })
          ],
        ),
      ),
    );
  }
}
