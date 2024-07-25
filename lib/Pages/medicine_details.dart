import 'package:flutter/material.dart';
import 'package:untitled/Data/Pharmacy_list.dart';
import 'package:untitled/Model/medicine.dart';
import 'package:untitled/Pages/pharmacy_home.dart';
import 'package:untitled/goggle%20fonts.dart';
class MedicineDetails extends StatelessWidget {
  Medicine medicine;
  List med;
  MedicineDetails({super.key, required this.medicine, required this.med});

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
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${medicine.name}",style: myStyal(26,secondaryColor,FontWeight.bold),),
              SizedBox(height: 10,),
              Card(
                elevation: 8,
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("${medicine.image}"),fit: BoxFit.cover)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_sharp,color: primaryColor),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                      child: Text("${medicine.location}",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${medicine.rating}",style: myStyal(20),),
                  Row(
                    children: [
                      Icon(Icons.call,color: secondaryColor,),
                      SizedBox(width: 10,),
                      Text("${medicine.number}",style: myStyal(20),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("${medicine.brife}",style: myStyal(20),),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CapitalHome(medicines: med,)));
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: primaryColor,
                    ),
                    child: Center(child: Text("Check Medicine",style: myStyal(20,Colors.white,FontWeight.bold),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
