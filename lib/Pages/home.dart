import 'package:flutter/material.dart';
import 'package:untitled/Data/product.dart';
import 'package:untitled/Model/modal.dart';
import 'package:untitled/Pages/list.dart';
import 'package:untitled/Pages/right.dart';
import 'package:untitled/goggle%20fonts.dart';
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child:Column(
                        children: [
                        InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>list(modal: allproducts[index])),);
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 160,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("${allproducts[index].image}"),fit: BoxFit.cover)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${allproducts[index].name}",style: myStyal(20,Colors.white,FontWeight.bold),),
                            ),
                          ),
                        ),
                        ],
                      )
                    );
                  }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: allproducts.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("${allproducts[index].image}"),fit: BoxFit.cover)
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${allproducts[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                              Text("\$ ${allproducts[index].price}",style: myStyal(23,Colors.black,FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text("${allproducts[index].rating}",style: myStyal(20,Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Views: ",style: myStyal(20,Colors.black),),
                                  Text("${allproducts[index].views}",style: myStyal(20,Colors.black),),
                                ],
                              ),
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>button()));
                                },
                                child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                  ),
                                  child: Center(child: Text("Next",style: myStyal(18,Colors.black),)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                }),
          ],
        ),
      ),
    );
  }
}
