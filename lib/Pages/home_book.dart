import 'package:flutter/material.dart';
import 'package:untitled/Data/book_list.dart';
import 'package:untitled/Pages/Books_details.dart';
import 'package:untitled/Pages/next.dart';
import 'package:untitled/goggle%20fonts.dart';
class HomeBook extends StatelessWidget {
  HomeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Books",style: myStyal(30,Colors.red,FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue.withOpacity(0.4),
      ),
      backgroundColor: Colors.blue.withOpacity(0.4),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount:5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>BooksDetails(bookClass: Books[index],)));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 190,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage("${Books[index].image}"),fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${Books[index].name}",style: myStyal(30,Colors.black,FontWeight.bold),),
                            Text("${Books[index].author}",style: myStyal(30,Colors.black,FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  );
                  }),
            ),
            ListView.builder(
                itemCount: Books.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.white

                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 190,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("${Books[index].image}"),fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${Books[index].name}",style: myStyal(20,Colors.black),),
                                  Text("${Books[index].author}",style: myStyal(20,Colors.black),),
                                  Text("${Books[index].rating}",style: myStyal(20,Colors.black),),
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Next()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.black),
                                          color: Colors.blue
                                      ),
                                      child: Center(child: Text("Next",style: myStyal(18,Colors.white),)),
                                    ),
                                  ),
                                ],
                              ),
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
