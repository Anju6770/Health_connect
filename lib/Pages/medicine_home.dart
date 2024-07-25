import 'package:flutter/material.dart';
import 'package:untitled/Data/Pharmacy_list.dart';
import 'package:untitled/Data/medicine_list.dart';
import 'package:untitled/Pages/medicine_details.dart';
import 'package:untitled/goggle%20fonts.dart';
class MedicineHome extends StatelessWidget {
  MedicineHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:RichText(
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
                itemCount: Shop.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineDetails(med: Capital[index], medicine: Shop[index],)));
                  },
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      height: 239,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 239,
                                width: MediaQuery.of(context).size.width*0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("${Shop[index].image}"),fit: BoxFit.cover)
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${Shop[index].name}",style: myStyal(24,Colors.black,FontWeight.bold),maxLines: 3,),
                                    Text("${Shop[index].location}",style: myStyal(19,Colors.black),),
                                    Text("${Shop[index].rating}",style: myStyal(18,Colors.black),),
                                  ],
                                ),
                              ),
                            ],
                          )
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
