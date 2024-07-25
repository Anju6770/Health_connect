import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class CovidHome extends StatelessWidget {
  const CovidHome({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                  child: Center(child: Image(image: AssetImage("assets/image/cooo.jpg")))),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Covid-19",style: myStyal(30,secondaryColor,FontWeight.bold),),
                  Text("Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus.Most people infected with the virus will experience mild to moderate respiratory illness and recover without requiring special treatment. However, some will become seriously ill and require medical attention. Older people and those with underlying medical conditions like cardiovascular disease, diabetes, chronic respiratory disease, or cancer are more likely to develop serious illness. Anyone can get sick with COVID-19 and become seriously ill or die at any age.",style: myStyal(20),),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          children: [
                            Text("Deaths",style: myStyal(19,Colors.black,FontWeight.bold),),
                            Text("100K",style: myStyal(19),),
                          ],
                        )
                    ),
                    Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          children: [
                            Text("Cases",style: myStyal(19,Colors.black,FontWeight.bold),),
                            Text("100K",style: myStyal(19),),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 5,
                  child: Center(child: Image(image: AssetImage("assets/image/condo.jpg")))),
              SizedBox(height: 20,),
              Text("To prevent infection and to slow transmission of COVID-19, do the following:",style: myStyal(24,Colors.black,FontWeight.bold),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Get vaccinated when a vaccine is available to you.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Stay at least 1 metre apart from others.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Wear a properly fitted mask.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Choose open, well-ventilated spaces.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Wash your hands regularly with soap and water.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.brightness_1_rounded,size: 10,),
                  SizedBox(width: 8,),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Cover your mouth and nose when coughing.",style: myStyal(20),maxLines: 3,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
