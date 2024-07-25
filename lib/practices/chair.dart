import 'package:flutter/material.dart';
class Chair extends StatelessWidget {
  const Chair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back) ,),
        actions: [
          Icon(Icons.favorite_border,size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwZH2FFmm4lxAWUt1m3z4CS5ekXb6lbwP07w&s",)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:80 ,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwZH2FFmm4lxAWUt1m3z4CS5ekXb6lbwP07w&s",)),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUf04D97wDbCAVOlmE5bxHV-E594-e12UgEQO-Gx1M8KQnuQKMj0zA57hI96vtsr7NQKk&usqp=CAU",)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star,size: 30,color: Colors.deepOrange,),
                Text('4.8',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("145 reviews",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Leset Galant',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:26 ,
                      width: 26,
                      decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                        border: Border.all(color: Colors.lightBlueAccent,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height:26 ,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(color: Colors.white,width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:16 ,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ],

            ),
            Text('The Golden Chair is a retro-inspired design dipped in gold, washing away its austerity. This chair adds a touch of glam and sophistication to any space.'),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$ 64.00",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    ],
                  ),
                  Row(
                    children: [
                      MaterialButton(onPressed: (){},
                        minWidth: 200,
                        color: Colors.black,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


