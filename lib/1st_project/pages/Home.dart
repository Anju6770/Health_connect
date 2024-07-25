import 'package:flutter/material.dart';
import 'package:untitled/1st_project/data/Home_list.dart';
import 'package:untitled/1st_project/data/docs_list.dart';
import 'package:untitled/1st_project/pages/1hospital.dart';
import 'package:untitled/Model/Hospital.dart';
import 'package:untitled/Pages/hospital_home.dart';
import 'package:untitled/goggle%20fonts.dart';
class HomeMine extends StatelessWidget {
  const HomeMine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: Icon(Icons.notifications,color: primaryColor,)
                        ),
                        Container(
                          margin: EdgeInsets.all(30),
                          height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Icon(Icons.menu,color: primaryColor)
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
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(8),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryColor.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width*0.4,
                      child: Text("Health Care for your Health",style: myStyal(25),maxLines: 4,)),
                  Image(image: AssetImage("assets/image/hosp-removebg-preview.png"),fit: BoxFit.cover,)
                ],
              ) ,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stay healthy!",style: Styal(24,Colors.black,FontWeight.bold),),
                  Text("We are here to help you 24/7 with the best treatment in the world",style: Styal(18),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Best Hospitals in Bhutan",style: Styal(26,primaryColor,FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: hospital.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>hospitalProject(homeModel: hospital[index],dos: allDocs[index],)));
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
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("${hospital[index].image}"))
                              ),
                            ),
                            Text("${hospital[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
