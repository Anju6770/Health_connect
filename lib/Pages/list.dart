import 'package:flutter/material.dart';
import 'package:untitled/Model/modal.dart';
import 'package:untitled/goggle%20fonts.dart';
class list extends StatelessWidget {
  Modal modal;
  list({super.key,required this.modal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${modal.name}",style: myStyal(30,Colors.black,FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Image.asset("${modal.image}", fit: BoxFit.cover,)),
          SizedBox(height: 2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$ ${modal.price}",style: myStyal(23,Colors.black,FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("${modal.rating}",style: myStyal(20,Colors.black),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Views: ",style: myStyal(20,Colors.black),),
                  Text("${modal.views}",style: myStyal(20,Colors.black),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${modal.Details}",style: myStyal(20,Colors.black),),
              )
            ],
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Center(child: Text("Add to Card",style: myStyal(20,Colors.white,FontWeight.bold),)),
          ),
          SizedBox(height: 5,),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color: Colors.blueAccent,
            ),
            child: Center(child: Text("Buy Now",style: myStyal(22,Colors.white,FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}
