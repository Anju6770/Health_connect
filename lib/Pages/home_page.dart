import 'package:flutter/material.dart';
import 'package:untitled/Data/product_list.dart';
import 'package:untitled/Pages/complete.dart';
import 'package:untitled/Pages/product_details.dart';
import 'package:untitled/goggle%20fonts.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: allProducts.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>ProductDetails(modalClass: allProducts[index],))
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          height:250,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("${allProducts[index].imgUrl}"),fit: BoxFit.cover,),
                              color: Colors.grey.withOpacity(0.4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${allProducts[index].productName}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemCount: allProducts.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.all(20),
                              height:100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.4)
                              ),
                              child: Image.asset("${allProducts[index].imgUrl}",fit: BoxFit.cover,)
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${allProducts[index].productName}",style: myStyal(20,Colors.black),),
                              Text("\$ ${allProducts[index].price}",style: myStyal(23),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text("${allProducts[index].rating}",style: myStyal(20),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Views: ",style: myStyal(20,Colors.black),),
                                  Text("${allProducts[index].reviews}",style: myStyal(20),),
                                ],
                              ),
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Complete()));
                                },
                                child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.black),
                                    color: Colors.yellow,
                                  ),
                                  child: Center(child: Text("Next",style: myStyal(18,Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                })
          ],
        ),
      ),
    );
  }
}
