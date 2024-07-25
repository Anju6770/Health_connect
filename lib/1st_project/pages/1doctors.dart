import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/goggle%20fonts.dart';
class HomeDoctors extends StatelessWidget {
  // Docs docs;
  List docs;
  HomeDoctors({super.key,required this.docs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  SingleChildScrollView(
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
                                  Text("Back",style: Styal(21,primaryColor,FontWeight.bold),),
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
                            child: Text("Speciality",style: myStyal(30,Colors.white,FontWeight.bold),)
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
                        padding: const EdgeInsets.all(9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.search,color: primaryColor,size: 30,),
                                    SizedBox(width: 20,),
                                    Text("Search...",style: myStyal(18,Colors.black),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_voice_rounded,size: 30,),
                                    SizedBox(width: 10,),
                                    Icon(Icons.qr_code_scanner_outlined,size: 26,),
                                  ],
                                ),
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
           ListView.builder(
             physics: NeverScrollableScrollPhysics(),
             itemCount: 1,
             shrinkWrap: true,
             itemBuilder: (context,index){
              return Image(image: AssetImage("${docs[index].image}")
              );
             },
           ),
           Container(
             height: 60,
             width: double.infinity,
             decoration: BoxDecoration(
               border: Border.all(color: secondaryColor),
               borderRadius: BorderRadius.circular(20),

             ),
           )
         ],
       ),
     ),
    );
  }
}
