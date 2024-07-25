import 'package:flutter/material.dart';
class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios),),
        title: Text('Bali Experience',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          Text("Edit",style: TextStyle(fontSize: 18),),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage("assets/image/land.jpg"), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height:40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child:
                  Icon(Icons.favorite,color: Colors.red,)
                  ),
                  SizedBox(height: 60,),
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Epic Trip * Bali,indonesia",style: TextStyle(color: Colors.black54),),
                              Row(
                                children: [
                                  Icon(Icons.star,size: 18,),
                                  Text("4.8(12k)"),
                                ],
                              ),
                            ],
                          ),
                          Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Adventure from Ubud to Nusa Penida.."),
                              Text("\$700 per day"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ),
          ],
        ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage("assets/image/forest.jpg"), fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:
                        Icon(Icons.favorite,color: Colors.red,)
                    ),
                    SizedBox(height: 60,),
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Epic Trip * Bali,indonesia",style: TextStyle(color: Colors.black54),),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 18,),
                                    Text("4.8(12k)"),
                                  ],
                                ),
                              ],
                            ),
                            Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Adventure from Ubud to Nusa Penida.."),
                                Text("\$500 per day"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage("assets/image/bord.jpg"), fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:
                        Icon(Icons.favorite,color: Colors.red,)
                    ),
                    SizedBox(height: 60,),
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Epic Trip * Bali,indonesia",style: TextStyle(color: Colors.black54),),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 18,),
                                    Text("4.8(12k)"),
                                  ],
                                ),
                              ],
                            ),
                            Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Adventure from Ubud to Nusa Penida.."),
                                Text("\$600 per day"),
                              ],
                            ),
                          ],
                        ),
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
  }
}
